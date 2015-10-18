def cipher(word, shift)
  cryptic = ""
  alphabet = ("a".."z").to_a.concat(("A".."Z").to_a)

  # alphabet.each_with_index do |letter, index|
  #   puts "#{index}: #{letter}"
  # end

  word.each_char do |char|
    if alphabet.include?(char)
      alphabet.each_with_index do |letter, index|
        if letter === char
          # Adjust for going outside alphabet list
          if index + shift > 51
            num = (index + shift) - 26
          elsif index.between?(25, 51) && (index + shift) < 26
            num = (index + shift + 26)
          elsif index.between?(0, 25) && (index + shift) > 26
            num = (index + shift - 26)
          elsif (index + shift) < 0
            num = 26 + (index + shift)
          else
            num  = index + shift
          end
          cryptic.concat(alphabet[num].to_s)
        end
      end
    else
      cryptic += char
    end
  end

  return cryptic
end

puts cipher("What a string!", -5)