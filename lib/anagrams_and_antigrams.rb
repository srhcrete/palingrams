#!/usr/bin/env ruby

class Palingram
  def initialize()
  end

  def is_palingram(str1, str2)
    str1_arr = str1.downcase.split('').sort
    str2_arr = str2.downcase.split('').sort
    str1_reverse = str1.downcase.reverse
    str2_downcase = str2.downcase
    if (str1_arr === str2_arr && str1_reverse === str2_downcase)
      'These words are palindromes and anagrams'
    elsif (str1_arr === str2_arr)
      'These words are anagrams'
    else
      'These words are not anagrams'
    end
  end
end

puts "Type a word"
str1 = gets.chomp
puts "Type another word"
str2 = gets.chomp
example = Palingram.new()
result = example.is_palingram(str1, str2)
if result === 'These words are palindromes and anagrams'
  puts 'These words are palindromes and anagrams'
elsif result === 'These words are anagrams'
  puts 'These words are anagrams'
else result === 'These words are not anagrams'
  puts "These words are not anagrams"
end
