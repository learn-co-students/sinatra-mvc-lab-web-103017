class PigLatinizer

  attr_reader :text

  def initialize

  end

  def piglatinize(word)
    vowels = %w(a e i o u)
    if vowels.include?(word[0].upcase) || vowels.include?(word[0].downcase)
      word + "way"
    elsif word[0] == 'q' && word[1] == 'u'
      pig = word.slice(2..-1) + "quay"
    else
      vowel_index = 0
        word.split('').each_with_index do |letter, index|
          vowel_index = index if vowel_index == 0 && vowels.include?(letter)
        end
      pig = word.slice(vowel_index..-1) + word.slice(0..vowel_index- 1) + "ay"
    end
  end

    def to_pig_latin(sentence)
      arr = sentence.split(' ')
      result = arr.map {|word| piglatinize(word)}
      result.join(' ')
    end

end
