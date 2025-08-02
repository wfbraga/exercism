module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier.to_s.slice(0, 3)
    return :A if cargo == "OIL" || cargo == "GAS"

    :B
  end
end
