class PigLatinizer
  attr_accessor :string

  def initialize
  end

  def piglatinize(word)
    if ["a", "e", "i", "o", "u"].include?(word.chars.first.downcase)
      return word + "way"
    else
      word_arr = word.split(/([aeiou].*)/)

      if ["a", "e", "i", "o", "u"].include?(word[0].chars.last)
        word_arr[1] + word_arr[0] + "way"
      else
        word_arr[1] + word_arr[0] + "ay"
      end
    end
  end

  def to_pig_latin(string)
    words = string.split(" ")
    words.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end