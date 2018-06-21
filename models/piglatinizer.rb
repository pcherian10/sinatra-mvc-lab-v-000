class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def latinize
    counter = 0

    @text.split(" ").collect do |word|
        word.split("")
        if"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("").include? (word[0])
          word[(1..-1)] + word[0]+"ay"
        elsif "aeiouAEIOU".split("").include? (word[0])
          word +"ay"
        else
          word.each do |letter|
            if "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("").include? (letter)
              letter
            else
              break
            end
          end
          word[(counter)..-1] + word[0..(counter-1)] + "ay"
        end
      end
    end
end
