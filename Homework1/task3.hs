newSum 0 succ = succ
newSum n succ = newSum (n - 1) (succ + n)	 
squareSum n = (newSum n 0) * (newSum n 0)

sumOfSquares 0 succ = succ
sumOfSquares n succ = sumOfSquares (n - 1) (succ + n * n)

sumsqr n = 
	squareSum n - (sumOfSquares n 0)