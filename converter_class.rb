#Difficulties:
#Problem calling the convert method on currency_object.
#The class of a variable set to equal CurrencyConverter.new(var_from_Currency) returned as a class.
#I expected the class to return a new amount and currency code.
#Did not know how to test the methods in an informed, intentional manner.

#I learned:
#How to use require_relative
#That an effective testing tool would allow me to be more procedural.
#A hash of hashes works better here than an array of hashes
#That I need to research how to call methods in different contexts.

class UnknownCurrencyCodeError < StandardError
end
require_relative 'currency_class'
class CurrencyConverter < Currency
  attr_reader :new_currency

  def initialize(currency_object)
    @currency_object = currency_object
    @conversion_rates = {
      USD: {
        EUR: 0.894726,
        JPN: 101.818
      },
      EUR: {
        USD: 1.117,
        JPN: 113.774
      },
      JPN: {
        USD: 0.00982184,
        EUR: 0.00879
      }
    }
  end

  def convert(exchange)
    code = @currency_object.code
    amount = @currency_object.amount
    conversion_rate = @conversion_rates[code][exchange]
    new_amount = conversion_rate * amount
    new_currency = Currency.new(new_amount, exchange)
    return new_currency
  end
end
