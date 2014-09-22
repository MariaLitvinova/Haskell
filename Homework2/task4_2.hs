findNumber number [] = False
findNumber number (x : xs) = (x == number) || (findNumber number xs)

checklist [] = False      
checklist (x : xs) = findNumber (10 - x) xs

checkSum [] = False
checkSum (x : xs) =  (checklist (x : xs)) || (checkSum xs)