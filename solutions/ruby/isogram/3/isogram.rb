class Isogram
  def self.isogram?(input)
    # .gsub(/[^a-z]/, '') removes all non-alphabetic characters
    # .scan(/\w/) extracts all word characters (letters, digits, and underscores) and returns them as an array
    # .scan() makes the code more concise and easier to read,
    # as it directly returns an array of the characters we want to analyze,
    # without needing to split the string into an array first

    letters = input.downcase.scan(/\w/)
    letters.uniq.size == letters.size
  end
end
