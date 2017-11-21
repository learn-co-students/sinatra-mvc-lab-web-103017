class PigLatinizer

  def piglatinize(word)
    if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
      piglatinize_begins_with_vowel(word)
    else
      piglatinize_begins_with_consonant(word)
    end
  end


  def to_pig_latin(string)
    words = string.split
    words.collect do |word|
      if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
        piglatinize_begins_with_vowel(word)
      else
        piglatinize_begins_with_consonant(word)
      end
    end.join(" ")
  end



    def piglatinize_begins_with_consonant(word)
      characters = word.chars
      while !(['a', 'e', 'i', 'o', 'u'].include?(characters[0].downcase))
        first_char = characters[0]
        characters.shift
        characters.push(first_char)
      end
      characters.join + "ay"
    end

    def piglatinize_begins_with_vowel(word)
      word + "way"
    end


end
