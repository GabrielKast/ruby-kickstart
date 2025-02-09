# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count sentence
  result = Hash.new(0)
  sentence.split(/\W+/).each do |word|
    indexed_word = word.downcase
    result[indexed_word] = result[indexed_word]+1
  end
  result
end
