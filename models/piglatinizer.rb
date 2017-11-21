class PigLatinizer


  def piglatinize(input)
    vowels = ["a", "e", "i", "o", "u", "y"]
    if vowels.include?(input[0].downcase)
      input + "way"
    else
      counter = 0
      while !vowels.include?(input[0].downcase)
        input += input[0]
        input[0] = ''
        counter += 1
        break if counter == input.length
      end
      input + "ay"
    end
  end

  def to_pig_latin(input)
    input.split(" ").map { |w| piglatinize(w) }.join(" ")
  end
  












  #   if input.size == 1
  #     input + "way"
  #   elsif input.include?(" ")
  #     words = input.split(" ")
  #     words.map! do |word|
  #       input.size == 1 ? input + "way" : input[1..-1] + input[0] + "ay"
  #     end.join(" ")
  #   else
  #     input[1..-1] + input[0] + "ay"
  #   end
  # end


end
