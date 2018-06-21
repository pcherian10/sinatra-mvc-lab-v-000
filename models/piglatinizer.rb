class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def latinize
    @text.split("")

    if"bcdfghjklmnpqrstvwxyz".split("").include? (text[0])
      @text[(1..-1)] + @text[0]+"ay"

    elsif "aeoui".split("").include? ("a")


end
