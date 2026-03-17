testing
presentValueForMarket: aMarket
"
Have a present value which is the sum of the present value of Products
Have 0 value if they are empty
"
^ products detectSum:[:product | product presentValueForMarket: aMarket ]