require 'prime'

def gap(g, m, n)
  previous_prime = nil
  Prime.each(n) do |prime|
    if prime > m
      if !previous_prime
        previous_prime = prime
      else
        current_prime = prime
        if current_prime - previous_prime == g
          return [previous_prime, current_prime]
        else
          previous_prime = current_prime
        end
      end
    end
  end
  return nil


end

p gap(4, 130, 200)


# require 'prime'
#
# def gap(gap, low, high)
#   primes_between(low,high).each_cons(2).find { |(a,b)| b-a == gap }
# end
#
# def primes_between(low,high)
#   Prime.each(high).select { |prime| prime >= low }
# end
