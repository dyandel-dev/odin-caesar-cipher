def sub_strings(string, dictionary)
  string_array = string.downcase.split(/\W+/)

  dictionary.reduce(Hash.new(0)) do |count, word| 
    string_array.each do |string| 
      matches = string.scan(word).length

      count[word] = matches if matches > 0
    end
    count
  end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
