bt 1 succ = succ
bt n succ = bt (n - 1) (n - 1 + 1/succ)

b n = 1 / (bt n n) 