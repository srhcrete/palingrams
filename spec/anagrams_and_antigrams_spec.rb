require('rspec')
require('anagrams_and_antigrams')


describe('#anagrams_and_antigrams') do
  example = Palingram.new()

  it('will check for vowels to verify if input is word') do
    expect(example.is_palingram('lvd', 'ppll')).to(eq('These are not words'))
  end
  it('will check if two words are anagrams') do
    expect(example.is_palingram('cinema', 'iceman')).to(eq('These words are anagrams'))
  end
  it('will ignore case when checking anagrams') do
    expect(example.is_palingram('Cinema', 'Iceman')).to(eq('These words are anagrams'))
  end
  it('will check if a phrase is an anagram') do
    expect(example.is_palingram('Meal for one', 'For me alone')).to(eq('These words are anagrams'))
  end
  it('will check if a phrase or word is an anagram and also palindrome') do
    expect(example.is_palingram('Lived', 'Devil')).to(eq('These words are palindromes and anagrams'))
  end
  it('will check how many letters non-anagram words have in common') do
    expect(example.is_palingram('tacocat', 'forgotten')).to(eq('These words are not anagrams, but have 3 matching sets of letters'))
  end
  it('will ignore punctuation when checking for anagram') do
    expect(example.is_palingram('Election results', 'Lies! Let\'s recount')).to(eq('These words are anagrams'))
  end
end
