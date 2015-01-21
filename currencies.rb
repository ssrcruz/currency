class Currency
  attr_reader :amount, :code

  def initialize(amount, code)
    @currency_amount = amount
    @currency_code = code
  end


  def ==(other)
    @amount == other.amount
  end

  def +(other)
    if @currency_code == other.code
      Currency.new(@code, @currency_amount + other.amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if self.code == self.amount
      Currency.new(amount - other.amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(nums)
    Currency.new(amount * nums)
  end
end






























# number_to_currency(12.0, :precision => 2)
#  => "$12.00"
