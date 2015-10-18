# Substrings

# Assistance from another student's solution

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  count = 0

  # Create hash for counting
  count_hash = Hash.new

  # Remove non-alphanumeric characters, clean up array
  words = (string.downcase.gsub(/[^0-9a-z ]/i, "")).split(" ")

  # For each word from string, going to check if dictionary includes that pattern
  dictionary.each do |d|
    words.each do |w|
      if w.include? d
        count += 1
      end
    end
    # Only create hash pair if count > 0
    if count > 0
      count_hash[d] = count
    end
    count = 0
  end
  return count_hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)