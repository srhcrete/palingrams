#!/usr/bin/env ruby

class Palingram
  def initialize()
  end

  def is_palingram(str1, str2)
    str1_arr = str1.downcase.split('').sort.join.gsub(/\W/, '')
    str2_arr = str2.downcase.split('').sort.join.gsub(/\W/, '')
    str1_reverse = str1.downcase.reverse
    str2_downcase = str2.downcase
    letter = str1.count(str2)
    if (/[aeiouAEIOU]/.match(str1) === nil || /[aeiouAEIOU]/.match(str2) === nil)
      'These are not words'
    elsif (str1_arr === str2_arr && str1_reverse === str2_downcase)
      'These words are palindromes and anagrams'
    elsif (str1_arr === str2_arr)
      'These words are anagrams'
    elsif (letter >=1)
      'These words are not anagrams, but have ' + letter.to_s + ' matching sets of letters'
    else
      'These words are antigrams'
    end
  end
end

puts "Type a word"
str1 = gets.chomp
puts "Type another word"
str2 = gets.chomp
example = Palingram.new()
puts example.is_palingram(str1, str2)
