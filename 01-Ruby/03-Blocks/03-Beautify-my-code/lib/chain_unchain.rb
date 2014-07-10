def shuffle_word(a_word)
  #TODO: refactor this method

  a_word.upcase.chars.shuffle
end

def prime?(number)
  (2..(number - 1)).none? { |i| number % i == 0 }
end

def quote_prime_numbers(n)
  primes = (1..n).select do |i|
    prime?(i)
  end

  primes.map{ |num| "#{num} is prime" }
end