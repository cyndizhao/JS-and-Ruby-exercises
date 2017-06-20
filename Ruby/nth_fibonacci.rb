# Write a function fib() that a takes an integer nn and returns the nnth fibonacci ↴

def fin(n)
  if n == 0
    return nil
  elsif n == 1 || n == 2
    return n - 1
  else
    return fin(n-1) + fin(n-2)
  end
end

p fin(8)
