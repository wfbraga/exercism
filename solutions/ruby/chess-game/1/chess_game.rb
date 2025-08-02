module Chess
  RANKS = Range.new(1,8)
  FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    return true if RANKS.include?(rank) && FILES.include?(file)
    false
  end

  def self.nick_name(first_name, last_name)
    first_name[..1].concat(last_name[-2..]).upcase
  end

  def self.move_message(first_name, last_name, square)
    if self.valid_square?(square[1].to_i, square[0])
      "#{self.nick_name(first_name, last_name)} moved to #{square}"
    else
      "#{self.nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
