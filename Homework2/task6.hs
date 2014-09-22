isCorrect cond [] 	= True
isCorrect cond [x] 	= True
isCorrect cond (x : xs) = (cond x (head xs)) && (isCorrect cond xs)
isIncreasing (xs)	= isCorrect (\a b -> a < b) (xs)
                                                                                            
splittedList [] lstOfLengths succ 	= []
splittedList [x] lstOfLengths succ	= lstOfLengths ++ [succ]
splittedList (x : xs) lstOfLengths succ = 
	if x < head xs then
		splittedList xs lstOfLengths (succ + 1)
	else
		splittedList xs (lstOfLengths ++ [succ]) 1

split xs 		= splittedList xs [] 1
 
testList [] num		= True
testList (x : xs) num	= (mod x num == 0) && (testList xs num)

listnod [] = 1
listnod [x] = x
listnod (x : xs) = gcd (x) (listnod xs)

parts xs		=
	if length xs < 2 then
		False
	else
		correctLengthParts xs

correctLengthParts xs 	=
	if (isIncreasing xs) then
		True
	else
		if (listnod (split xs) == 1) then
			False
		else
			testList (split xs) (listnod (split xs))


test1 = parts [1, 2, 8, 2, 5, 6]
test2 = parts [1, 2, 3, 4, 5]
test3 = parts [1, 2, 1, 2, 3, 4]
test4 = parts [1, 2, 3, 4, 5, 6, 1, 2, 3, 4]
test5 = parts [4, 6, 3, 5, 7]
test6 = parts [1, 1, 2, 3, 1, 2, 4]            
