def substrings(word_string, dictionary)
  results = {}
  count = 0
  word_array = (word_string.downcase).split(' ')
  dictionary.each do |search_phrase|
    word_array.each do |word|
      count+=1 if (word.include? search_phrase)
    end
    (count != 0) ? results[search_phrase] = count : nil
    count = 0
  end
  return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)