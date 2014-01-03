divides d n = rem n d == 0

ldf k n | divides k n = k
        | k^2 > n = n -- if k^2 >= n then n is not prime => k^2 < n => n is prime
        | otherwise = ldf (k+1) n

ld n = ldf 2 n

prime n | n < 1 = error " should be greater than 1"
        | n == 1 = False
        | otherwise = ld n == n 



