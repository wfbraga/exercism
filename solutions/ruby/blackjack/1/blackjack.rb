module Blackjack
  def self.parse_card(card)
    case card
      when "ace"
        11
      when "two"
        then 2
      when "three"
         then 3
      when "four"
        then 4
      when "five"
        then 5
      when "six"
        then 6
      when "seven"
        then 7
      when "eight"
        then 8
      when "nine"
        then 9
      when "ten"
        then 10
      when "jack"
        then 10
      when "queen"
        then 10
      when "king"
        then 10
    else "other"
      0
    end
  end

  def self.card_range(card1, card2)
    cards_sum = parse_card(card1) + parse_card(card2)
    case cards_sum
      when 4..11
      then "low"
      when 12..16
      then "mid"
      when 17..20
      then "high"
    else "blackjack" 
    end
  end

def self.first_turn(card1, card2, dealer_card)
  # Helper to get the value of a card string
  def self.value(card)
    case card
    when 'ace' then 11
    when 'two' then 2
    when 'three' then 3
    when 'four' then 4
    when 'five' then 5
    when 'six' then 6
    when 'seven' then 7
    when 'eight' then 8
    when 'nine' then 9
    when 'ten', 'jack', 'queen', 'king' then 10
    else 0
    end
  end

  v1 = value(card1)
  v2 = value(card2)
  vd = value(dealer_card)
  sum = v1 + v2

  case
  # 1. If you have a pair of aces you must always split them.
  when card1 == 'ace' && card2 == 'ace'
    "P"

  # 2. Blackjack logic
  when sum == 21
    # If dealer has an ace (11), face card (10), or a ten (10)
    case vd
    when 10, 11
      "S"
    else
      "W"
    end

  # 3. Sum in range [17, 20]
  when (17..20).include?(sum)
    "S"

  # 4. Sum in range [12, 16]
  when (12..16).include?(sum)
    vd >= 7 ? "H" : "S"

  # 5. Sum 11 or lower
  else
    "H"
  end
end
end
