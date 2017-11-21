class PigLatinizer

  def piglatinize(word)

      if word[0] =~ /\A[aeiouAEIOU]/
        word << "way"
      elsif word[0] =~ /[^aeiouAEIOU]/ && word[1] =~ /[^aeiouAEIOU]/ && word[2] =~ /[^aeiouAEIOU]/
        consonants = ""
        consonants << word [0..2]
        word = word.split("")[3..-1].join
        word + consonants + 'ay'
      elsif word[0] =~ /[^aeiouAEIOU]/ && word[1] =~ /[^aeiouAEIOU]/
        consonants = ""
        consonants << word [0..1]
        word = word.split("")[2..-1].join
        word + consonants + 'ay'
      else
        consonants = ""
        consonants << word[0]
        word = word.split("")[1..-1].join
        word + consonants + 'ay'
      end
    end


    def to_pig_latin(string)
      string.split.collect{|word| piglatinize(word)}.join(" ")
    end

end
