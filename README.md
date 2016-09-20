#Currency Converter

==

##Synopsis

####This program takes two values from the user:
####1. An amount of money.
####2. The the money's currency.

####The program then requires the three-letter code of the currency the user would like the money to be converted to.

####The user's answer is iterated through stored conversion rates to provide the converted amount to the desired currency.

---

##Code

####The following is code that was written with the intention to call the *convert* method on a variable assigned an amount and currency code. The desired exchange would be called inside the method, outputting the new amount and currency after the exchange.

```Ruby
def convert(exchange)
  code = @currency_object.code
  amount = @currency_object.amount
  conversion_rate = @conversion_rates[code][exchange]
  new_amount = conversion_rate * amount
  new_currency = Currency.new(new_amount, exchange)
  return new_currency
end
```

##Language

####Written in Ruby

##Author

####Gabriel Estes
