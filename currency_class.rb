class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_reader :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(other)
    self.amount == other.amount && self.code == other.code
  end

  def !=(other)
    self.amount != other.amount && self.code != other.code
  end

  def +(other)
    if @code == other.code
      new_amount = @amount + other.amount
      Currency.new(@amount + other, amount, @code)
    else
      raise DifferentCurrencyCodeError, "Wrong currency type."
    end
  end

end

# Represent an amount of currency
# Must be created with an amount and a currency code
# Must equal another Currency object with the same currency code
# Must NOT equal another Currency object with different amount or currency code.
# Must be able to be added to another Currency object with the same currency code.
# Must be able to be subtracted by another Currency object with the same currency code.
# Must raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# Must be able to be multiplied by an int or float and return a Currency object.
# Currency() must be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments, one being the amount and the other being the currency code.
