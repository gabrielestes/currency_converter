class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter
  attr_reader :currency_object :desired_code :new_currency

  def initialize()
    @conversion_rates = {'USD' => {'EUR' => 0.89, 'JPY' => 0.24}}
    # puts conversion_rates["USD"]
  end

  def convert(currency_object, desired_code)
    code = currency_object.code
    amount = currency_object.amount
    conversion_rate = @conversion_rates[code][desired_code]
    new_amount = conversion_rate * amount
    new_currency = Currency.new(new_amount,desired_code)
    return new_currency
  end
    #variable.amount
end

# conversion_rate = [
#   {'USD' => 1.00, 'EUR' => 0.89},
#   {'USD' => 1.00, 'JYP' => 0.89},
#   {'EUR' => 1.00, 'USD' => 1.11},
#   {'EUR' => 1.00, 'JYP' => 113.77},
#   {'JPY' => 1.00, 'USD' => 0.0098},
#   {'JPY' => 1.00, 'EUR' => 0.0088}
#   ]
