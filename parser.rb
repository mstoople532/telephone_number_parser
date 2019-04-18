# frozen_string_literal: true
CONVERSION_TABLE = {
  "2" => %w[A B C],
  "3" => %w[D E F],
  "4" => %w[G H I],
  "5" => %w[J K L],
  "6" => %w[M N O],
  "7" => %w[P Q R S],
  "8" => %w[T U V],
  "9" => %w[W X Y Z]
}.freeze

def parse_number(number)
  parsed_number = number.each_char.map { |num| CONVERSION_TABLE.fetch(num) }
  parsed_number
end

def parse_dictionary
  words = Array.new
  dictionary = File.readlines('./sample_dictionary.txt') { |line| words << line.strip} 
end

parse_dictionary

ARGV.each do |arg|
  parsed = parse_number(arg)
end

