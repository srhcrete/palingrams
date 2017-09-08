#!/usr/bin/env ruby

class Palingram
  def initialize()
  end

  def is_palingram(str1, str2)
    str1_arr = str1.downcase.split('').sort.join.gsub(/\W/, '')
    str2_arr = str2.downcase.split('').sort.join.gsub(/\W/, '')
    str1_reverse = str1.downcase.reverse
    str2_downcase = str2.downcase
    if (/[aeiouAEIOU]/.match(str1) === nil || /[aeiouAEIOU]/.match(str2) === nil)
      'These are not words'
    elsif (str1_arr === str2_arr && str1_reverse === str2_downcase)
      'These words are palindromes and anagrams'
    elsif (str1_arr === str2_arr)
      'These words are anagrams'
    elsif (str1.match(str2) === nil)
      'These words are antigrams'
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
not_words = 'These are not words'
palingrams = 'These words are palindromes and anagrams'
anagrams = 'These words are anagrams'
antigrams = 'These words are antigrams'
not_anagrams = 'These words are anagrams'
if result === not_words
  puts not_words
elsif result === palingrams
  puts palingrams
elsif result === anagrams
  puts anagrams
elsif result === antigrams
  puts antigrams
else result === not_anagrams
  puts not_anagrams
end
