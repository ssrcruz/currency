require 'minitest/autorun'
require 'minitest/pride'
require './currencies'
require './different_currency_code_error'

class CurrenciesTest < MiniTest::Test

  def test_00_currency_class_exist
    assert Currency
  end

  def test_01_currency_amount
    assert Currency.new("", "")
  end

  def test_02_currency_equals
    dollar = Currency.new(10, "USD")
    other_dollar = Currency.new(10, "USD")
    assert_equal true, dollar == other_dollar
  end


  def test_03_currency_adds
    dollar = Currency.new(10, "USD")
    other_dollar = Currency.new(5, "USD")
    added_currency = dollar + other_dollar
    assert_equal 15, added_currency
  end

  def test_04_currency_subtracts
    dollar = Currency.new(10, "USD")
    other_dollar = Currency.new(1, "USD")
    subtracted_currency = dollar - other_dollar
    assert_equal 9, subtracted_currency
  end

  def test_05_different_currency_code_error
    dollar = Currency.new(10, "USD")
    other_dollar = Currency.new(5, "Euro")
    assert_raises(DifferentCurrencyCodeError) do
      dollar - other_dollar
    end
    assert_raises(DifferentCurrencyCodeError) do
      dollar + other_dollar
    end
  end

  def test_06_multiply_fixnum_float
    dollar = Currency.new(10, "USD")
        # assert_equal 44, dollar * 4.4
        # assert_equal 40, dollar * 4
    other_dollar = Currency.new(5, "Euro")
    assert_equal Currency.new(44, "USD"), dollar * 4.4
    assert_equal Currency.new(40, "USD"), other_dollar * 4
  end

end
