parts2 [] 	= False
parts2 xs 	= 
	if (mod (length xs) 2 /= 0) then
		False
	else
		True 