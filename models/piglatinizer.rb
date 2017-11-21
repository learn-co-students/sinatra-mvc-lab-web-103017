class PigLatinizer

  # attr_reader :text
  #
  # def initialize(text)
  #   @text = text
  # end
  def piglatinize(word)
    len = word.length
    final = ""
    if vowels?(word[0])
      final = word + "way"
    else
      i = 0
      back = ""
      until vowels?(word[i])
        back += word[i]
        i += 1
      end
      final = word[i..len-1] + back + "ay"
    end
    final
  end

  def vowels?(c)
    c.scan(/[aeouiAEOUI]/).any?
  end

  # def consonants(c)
  #   c.scan(/[bcdfghjklmnpqrstvwxyz]/).any?
  # end

  def to_pig_latin(sentence)
    sentence.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
