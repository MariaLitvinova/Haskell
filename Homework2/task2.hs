sumprod [] = 0
sumprod [x] = 0
sumprod (x : xs) = x * head xs + sumprod xs