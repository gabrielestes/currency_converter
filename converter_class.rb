class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter
  attr_reader :
  def initialize()
  end
end

conversion_rate = [
  {'USD' => 1.00, 'EUR' => 0.89},
  {'USD' => 1.00, 'JYP' => 0.89},
  {'EUR' => 1.00, 'USD' => 1.11},
  {'EUR' => 1.00, 'JYP' => 113.77},
  {'JPY' => 1.00, 'USD' => 0.0098},
  {'JPY' => 1.0, 'EUR' => 0.0088}
  ]
# Must be initialized with a dictionary of currency codes to conversion rates (see link to rates below).
# At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate. An example would be this: {'USD': 1.0, 'EUR': 0.74}, which implies that a dollar is worth 0.74 euros.
# Must be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in. That is, currency_converter.convert(Currency(1, 'USD'), 'USD') == Currency(1, 'USD').
# Must be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code.
# Must be able to be created with a dictionary of three or more currency codes and conversion rates. An example would be this: {'USD': 1.0, 'EUR': 0.74, 'JPY': 120.0}, which implies that a dollar is worth 0.74 euros and that a dollar is worth 120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
# Must be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
# Must raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.
