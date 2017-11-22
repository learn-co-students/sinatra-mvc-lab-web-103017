class PigLatinizer


  def initialize
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      letter = []
      if word[0] =~ /[aeiouAEIOU]/
        word + "way"
      else
        until word[0] =~ /[aeiouAEIOU]/
          letter << word.slice!(0)
        end
        word + letter.join("") + "ay"
      end
    end.join(" ")
  end

  def piglatinize(word)
    word.split(" ").map do |word|
      letter = []
      if word[0] =~ /[aeiouAEIOU]/
        word + "way"
      else
        until word[0] =~ /[aeiouAEIOU]/
          letter << word.slice!(0)
        end
        word + letter.join("") + "ay"
      end
    end.join(" ")
  end


end
