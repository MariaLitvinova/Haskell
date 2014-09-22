isCorrect cond [] 	= True
isCorrect cond [x] 	= True
isCorrect cond (x : xs) = (cond x (head xs)) && (isCorrect cond xs)

isIncreasing (xs)	= isCorrect (\a b -> a < b) (xs)
isDecreasing (xs)	= isCorrect (\a b -> a > b) (xs)

updown_t [] flag		= False
updown_t [x] False		= False
updown_t (x : xs) flag 		= 
	if flag then
		isDecreasing (x : xs)
	else
		if x < head xs then
			updown_t xs flag
		else
			if x > head xs then
				updown_t xs True
			else
				False

upDown (xs)	= 
	if isDecreasing xs then 
		False
	else
		updown_t (xs) False

test1 = upDown [2, 6, 9, 7, 3, 1]
test2 = upDown [2, 6, 9, 7, 3, 1, 8]
test3 = upDown [2, 6, 9]
test4 = upDown [1, 3, 1, 3]
test5 = upDown [4, 2, 4]
test6 = upDown [1]
test7 = upDown [1, 1]
test8 = upDown [3, 1]
test9 = upDown [3, 1, 1]