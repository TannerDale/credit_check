require_relative "credit_check"

class CreditCard
  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def card_number
    @card_number
  end

  def limit
    @limit
  end

  def is_valid?
    validate_card(@card_number)
  end

  def last_four
    @card_number[-4..]
  end
end
