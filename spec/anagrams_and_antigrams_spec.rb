require('rspec')
require('anagrams_and_antigrams')


describe('#anagrams_and_antigrams') do
  example = Palingram.new()

  it('will check for vowels to verify if input is a word') do
    expect(example.is_palingram('lvd', 'ppll')).to(eq('This are not words'))
  end
  it('will check two words to see if they are anagrams') do
    expect(example.is_palingram('cinema', 'iceman')).to(eq('These words are anagrams'))
  end
  it('will ignore case when checking to see if words are anagrams') do
    expect(example.is_palingram('Cinema', 'Iceman')).to(eq('These words are anagrams'))
  end
  it('will check if a phrase is an anagram') do
    expect(example.is_palingram('Meal for one', 'For me alone')).to(eq('These words are anagrams'))
  end
  it('will check if a phrase or word is a palindrome, if it is also an anagram') do
    expect(example.is_palingram('Lived', 'Devil')).to(eq('These words are palindromes and anagrams'))
  end
  it('will check if a phrase or word is an antigram') do
    expect(example.is_palingram('Hi', 'Bye')).to(eq('These words are antigrams'))
  end


end
