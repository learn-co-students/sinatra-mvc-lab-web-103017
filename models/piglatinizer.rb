require 'pry'
class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

      #first letter is a vowel
      if vowels.include?(word[0])
        word << "way"
        #first letter is a consonent
      else
        cons = ""
        word_array = Array.new(word.split(""))
        until vowels.include?(word_array[0]) do
          letter = word_array.shift
          cons << letter
        end
        word = word_array.join
        cons << "ay"
        word << cons
      end
      word
 end

  def to_pig_latin(phrase)
    phrase.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end

end


pig = PigLatinizer.new
pig.piglatinize("I")
