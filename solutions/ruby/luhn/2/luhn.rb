class Luhn
  def self.valid?(number)
    return false unless number.length > 1

    arr_sum = 0
    str_arrs = number.split(' ')
    str_arrs.each do |str|
      str.split('').each_with_index do |char , index|
        if index % 2 != 0
          arr_sum+= char.to_i
        else
          double = char.to_i * 2
          double-= 9 if double > 9
          puts double
          arr_sum+= double
        end
      end
    end
    arr_sum % 10 == 0
  end
end
