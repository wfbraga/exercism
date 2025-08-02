=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
  def self.abbreviate frase
    acronym = ''
    words_arr = frase.split(/\W+/)
    words_arr.each do | word |
      acronym << word[0]
    end
    acronym.upcase
  end
end