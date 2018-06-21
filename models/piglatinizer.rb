class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def latinize
    @text.split(" ")

    @text.collect do |word|
      word.split("")
      if"bcdfghjklmnpqrstvwxyz".split("").include? (word[0])
        word[(1..-1)] + word[0]+"ay"
      elsif"aeiou".split("").include? (word[0])
        word +"ay"
      elsif !("aeiou").split("").include? (text[0] && text[1])



end
