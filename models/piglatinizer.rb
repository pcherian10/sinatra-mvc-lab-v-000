class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def latinize
    counter = 0

    @text.split(" ").collect do |word|
        word.split("")
        if"bcdfghjklmnpqrstvwxyz".split("").include? (word[0])
          word[(1..-1)] + word[0]+"ay"
        elsif "aeiou".split("").include? (word[0])
          word +"ay"
        else
          word.each do |letter|
            if "bcdfghjklmnpqrstvwxyz".split("").include? (letter)
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
