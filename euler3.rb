# get prime factors

SAMPLE = 13195
REAL = 600851475143
tracker = 0
might_be_prime = []

def largest_prime_factor_of(n)
  tracker = n
  puts tracker
  if n%2 == 0 || n%3 == 0 || n%5 == 0
    largest_prime_factor_of(n - (tracker - 1))
  else
    might_be_prime << i
  end
end

puts largest_prime_factor_of(SAMPLE)
#puts largest_prime_factor_of(REAL)