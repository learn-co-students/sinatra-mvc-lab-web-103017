
class PigLatinizer

  attr_accessor :string

  def vowel?(char)
  "aeiouAEIOU".include?(char)
end


def piglatinize(string)
  words = string.split
  words.collect do |word|
    if vowel?(word[0])
      word += "way"
    else
      until vowel?(word[0]) do
        word = word[1..-1] + word[0]
      end
      word = word + "ay"
    end
  end.join
end

  def to_pig_latin(string)
    word_array = string.split
    word_array.collect do |word|
      if vowel?(word[0])
        word = word + "way"
      else
        until vowel?(word[0])
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    end.join(" ")
  end
end


    #   string = string.split(" ")
    #   string_array = string.collect do |word|
    #     vowels = ["a", "e", "i", "o", "u"]
    #     consonants = ["b", "c", "d","f", "g", "h","j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    #     double_consonants = ["pr", "pl", "un", "ch", "sh", "sm", "st", "th", "st", "gl", "th", "wh"]
    #     triple_consonants = ["spr"]
    #     first_two_consonants = word[0].downcase + word[1]
    #     first_three_consonants = word[0].downcase + word[1] + word[2]
    #     if vowels.include?(word[0].downcase)
    #       word = word += "way"
    #     elsif triple_consonants.include?(first_three_consonants)
    #       word.slice!(0)
    #       word.slice!(0)
    #       word.slice!(0)
    #       word += first_three_consonants + "ay"
    #     elsif double_consonants.include?(first_two_consonants)
    #       word.slice!(0)
    #       word.slice!(0)
    #       word += first_two_consonants + "ay"
    #     elsif consonants.include?(word[0].downcase)
    #       appended_consonant = word[0]
    #       word.slice!(0)
    #       word += appended_consonant
    #       word +="ay"
    #     end
    #   end
    #   if string_array.length == 1
    #     string_array.join(" ")
    #   else
    #   string_array.join(" ").capitalize
    #   end
    # end
