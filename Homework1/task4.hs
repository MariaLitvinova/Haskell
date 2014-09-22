fact 0 succfact succsum constn = succsum
fact n succfact succsum constn = fact (n - 1) (succfact * (constn - n + 1)) (succsum + (constn - n + 1) * succfact) constn

sumfact n = fact n 1 0 n                                                                  
