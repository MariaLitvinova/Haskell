check cond [] = False
check cond (x:xs) = cond x || check cond xs