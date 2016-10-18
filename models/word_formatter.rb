class WordFormatter


  def initialize

  end

  def self.upcase(text)
   return text.upcase
  end

  def self.camel_case(text)
    words = text.split(" ")
    new_text = ""
    words.each {|word| new_text << word.capitalize}
    return new_text
  end

end