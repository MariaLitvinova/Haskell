isIncreasingSequence [x] = True
isIncreasingSequence (h : t) = isIncreasingSequence (t) && (h < head t) 

decompose 0 = [[]]
decompose x = [ n:d | n <- [1..x], d <- decompose (x - n) ]

increasingSequences n = 
	filter isIncreasingSequence (decompose n)

nseq n = length (increasingSequences n) 	