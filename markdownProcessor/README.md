# How to Use MdProcessor

MdProcessor is a command line tool that converts Markdown files to HTML.

### Prerequisites

- Ruby installed on your system. You can download Ruby from the official website https://www.ruby-lang.org/en/downloads/.

### Installation

- Download the md_processor.rb file to your computer.

### Usage

1. Open a terminal.
2. Navigate to the directory containing the md_processor.rb file.
3. Run the following command:

```
ruby md_processor.rb <input_file.md> > <output_file.html>
```

- Replace <input_file.md> with the path to your Markdown file.
- Replace <output_file.html> with the desired name and path for your HTML file.

Example:

```
ruby md_processor.rb my_file.md > my_file.html
```

This will convert my_file.md to HTML and save it to my_file.html.

### Notes

- MdProcessor supports the following Markdown elements: headers, text, strong, and ~~links~~.
- If you want to add support for additional Markdown elements, you can modify the render method in the MdProcessor class.
- MdProcessor uses the Kramdown library for parsing Markdown.

### Reference

https://projectbook.code.brettchalupa.com/command-line-interfaces/markdown-processor.html
