class Acronym
  def self.abbreviate(phrase)
    new.acronym(phrase)
  end

  def acronym(phrase)
    phrase.split(/\W+/).flat_map{ | word | word[0]}.join.upcase
  end
end