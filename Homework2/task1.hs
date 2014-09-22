maxnum a b = 
	if (a > b) then
		a
	else
		b 

maxlist [] = 0
maxlist (x : xs) = maxnum x (maxlist xs)