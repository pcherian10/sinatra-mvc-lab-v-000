class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def latinize
    @text.split(" ")

    @text.collect do |word|
      
    if"bcdfghjklmnpqrstvwxyz".split("").include? (text[0])
      word[(1..-1)] + word[0]+"ay"

    elsif"aeiou".split("").include? (text[0])
      word +"ay"

    elsif !("aeiou").split("").include? (text[0] && text[1])


    elsif


end
