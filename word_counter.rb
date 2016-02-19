def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

raw_text = "This is an example of how hashes can be used to keep track of all
the words inside of a string that can really contain any number of words phrases
and punctuation. Let's try to see what all we can get away with! How about a few
numbers? 18 25 nine 84 134.431 <=> alien ship <~ wakka wakka wakka./,;:"

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(10).reverse

puts sorted.map { |word, count|  "#{word}:  #{count}"}
