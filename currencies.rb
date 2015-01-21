class Currency
  attr_reader :amount, :code

  def initialize(amount, code)
    @currency_amount = amount
    @currency_code = code
  end


  def ==(other_dollars)
    amount == other_dollars.amount
  end

  def +(other_dollars)
    Currency.new(amount + other_dollars.amount)
  end

  def -(other_dollars)
    Currency.new(amount - other_dollars.amount)
  end
end






























# number_to_currency(12.0, :precision => 2)
#  => "$12.00"
