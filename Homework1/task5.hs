isPrime n 1 result = result
isPrime n denominator result = isPrime n (denominator - 1) (result && (mod n denominator > 0))

isPrimeNumber 1 = False
isPrimeNumber n = isPrime n (n - 1) True

canBeRepresented n 1 result = result
canBeRepresented n firstSumMember result = 
	canBeRepresented n (firstSumMember - 1) (result || (isPrimeNumber firstSumMember && isPrimeNumber (n - firstSumMember) && (firstSumMember > (n - firstSumMember))))

g n = canBeRepresented n (n - 1) False