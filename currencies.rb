class Currency
  attr_reader :amount, :code

  def initialize(amount = 1, code)
    @code_symbols = {"$"=> :USD, "€"=> :Euro, "¥"=> :JPY}
    @currency_amount = amount
    @currency_code = code
  end


  def ==(other)
    self.code == other.code
    self.amount == other.amount
  end

  def +(other)
    if self.code == other.code
      #self.amount + other.amount
     Currency.new(amount + other.amount, code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if self.code == other.code
      #self.amount - other.amount
      Currency.new(amount - other.amount, code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(nums)
    Currency.new(@currency_code, @currency_amount * nums)
  end
end






























# number_to_currency(12.0, :precision => 2)
#  => "$12.00"
