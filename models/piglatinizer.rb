class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
    if vowels.include?(word.downcase[0])
      latin_word = word + "way"
      return latin_word
    else
      parts = word.split(/([aeiou].*)/)
      latin_word =  parts[1] + parts[0] + "ay"
      return latin_word
    end
  end


   def to_pig_latin(phrase)
    phrase = phrase.split(' ')
    latinized = []
    vowels = ["a","e","i","o","u"]
    phrase.each do |word|
      if vowels.include?(word.downcase[0])
        latinized << word + "way"
      else
        parts = word.split(/([aeiou].*)/)
        latinized << parts[1] + parts[0] + "ay"
      end
    end
    latinized.join(' ')
  end


end
