# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
# corpus ="below"
# corpus = "Howdy partner, sit down! How's it going?"

# dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
# corpus = File.read("./src/shakespeare.txt")
dictionary =File.read("./bad_word.txt").split
corpus=File.read("./shake.txt")



def word_counter(corpus, dictionary)
  h=Hash.new
  # Boucle on the dictionary
  (0..dictionary.length - 1).each do |i|

    # From the corpus string, put all words in downcase, split it in an array, compare each element to the dictionary and return true or false in the same array.
    # Then, count the number or "true" value.
    item_number = corpus.downcase.split(" ").map { |item| item.include?(dictionary[i]) }.count(true)
    unless item_number == 0
     h.store(dictionary[i],item_number)
    end
  end
   print h
end


word_counter(corpus,dictionary)

