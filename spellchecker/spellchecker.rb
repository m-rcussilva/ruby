class SpellChecker
  def initialize(dictionary_file)
    @dictionary = File.read(dictionary_file).split("\n")
  end

  def check_spelling(word)
    @dictionary.include?(word)
  end
end

spell_checker = SpellChecker.new("dictionary.txt")

print "Digite o nome de uma linguagem de programação: "
programmingLanguage = gets.chomp.downcase

if spell_checker.check_spelling(programmingLanguage)
  puts "Parabéns! > #{programmingLanguage} < está escrita corretamente."
elsif !spell_checker.check_spelling(programmingLanguage) && !programmingLanguage.empty?
  puts "Ops! :( > #{programmingLanguage} < está escrita incorretamente."
else
  puts "Desculpe, mas essa linguagem de programação não foi listada no meu banco de dados."
end
