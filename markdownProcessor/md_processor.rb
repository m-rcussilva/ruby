require "kramdown"

class MdProcessor
  def self.parse(md)
    Kramdown::Document.new(md).root
  end

  def self.render(element)
    case element.type
    when :root
      element.children.map { |child| render(child) }.join("")
    when :header
      level = element.options[:level]
      text = element.children.map { |child| render(child) }.join("")
      "<h#{level}>#{text}</h#{level}>"
    when :text
      element.value
    when :strong
      "<strong>#{element.children.map { |child| render(child) }.join("")}</strong>"
    when :a
      href = element.attr["href"]
      text = element.children.map { |child| render(child) }.join("")
      "<a href='#{href}'>#{text}</a>"
    else
      ""
    end
  end

  def self.convert(filename)
    md = File.read(filename)
    ast = parse(md)
    render(ast)
  end
end

if ARGV.length != 1
  puts "Usage: ruby md_processor.rb <input_file.md> > <output_file.html>"
  exit(1)
end

mdfile = ARGV[0]
html = MdProcessor.convert(mdfile)
puts html

