require('pry')
require('rspec')
require('anagrams_and_antigrams')


describe('#anagrams_and_antigrams') do
  example = Palingram.new()

  it('will check two words to see if they are anagrams') do
    expect(example.is_anagram('cinema', 'iceman')).to(eq(true))
  end

end
