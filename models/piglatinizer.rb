class PigLatinizer

  attr_accessor :words

  # def initialize
  #
  # end

  def piglatinize(input)
    words = input.split
    output = []
    words.each do |word|
      if vowel?(word[0])
        output << word + 'way'
      else
        until vowel?(word[0])
          word = word[1..-1] + word[0]
        end
        output << word + 'ay'
      end

    end
    output.join(" ")
  end

  def to_pig_latin(input)
    words = input.split
    output = []
    words.each do |word|
      if vowel?(word[0])
        output << word + 'way'
      else
        until vowel?(word[0])
          word = word[1..-1] + word[0]
        end
        output << word + 'ay'
      end

    end
    output.join(" ")
  end

  def vowel?(char)
    "aeiouAEIOU".include?(char)
  end


end
