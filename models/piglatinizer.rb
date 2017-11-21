require 'pry'

class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(user_phrase)
    @words = user_phrase.split(" ")
    @words.collect do |word|
      split_index = word.index(/[aeiouAEIOU]/)
      if split_index == 0
        word + "way"
      else
        word[split_index..-1] + word[0..split_index-1] + "ay"
      end
    end.join(" ")
  end

  def to_pig_latin(user_phrase)
    @words = user_phrase.split(" ")
    @words.collect do |word|
      split_index = word.index(/[aeiouAEIOU]/)
      if split_index == 0
        word + "way"
      else
        word[split_index..-1] + word[0..split_index-1] + "ay"
      end
    end.join(" ")
  end

end
