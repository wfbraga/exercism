class Acronym
  def self.abbreviate(phrase)
    new.acronym(phrase)
  end
  def acronym(phrase)
    phrase.split(/\W+/).sum("") { | w | w[0]}.upcase
  end
end