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
toss1 = gets.chomp
puts "Type another word"
toss2 = gets.chomp

example = Anagram.new()
game.wins?(toss1, toss2)
