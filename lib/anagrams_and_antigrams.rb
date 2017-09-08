#!/usr/bin/env ruby

class Palingram
  def initialize
  end

  def is_anagram(str1, str2)
    str1 = str1.split('').sort
    str2 = str2.split('').sort
    if (str1 === str2)
      true
    else
      false
    end
  end
end


puts "Type a word"
str1 = gets.chomp
puts "Type another word"
str2 = gets.chomp
example = Palingram.new()
result = example.is_anagram(str1, str2)
if result === true
  puts "These words are anagrams"
else
  puts "These words are not anagrams"
end
