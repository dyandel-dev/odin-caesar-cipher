def sub_strings(string, dictionary)
  string_downcase = string.downcase

  dictionary.reduce(Hash.new(0)) do |count, word| 
    matches = string_downcase.scan(word).length

    count[word] = matches if matches > 0
    count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts sub_strings("below", dictionary)

