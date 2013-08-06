#!/usr/bin/env ruby

def sum_sq(n)
  return (1..n).inject { |x, y| x = x + y ** 2 }
end

def sq_sum(n)
  return (1..n).inject { |x, y| x = x + y } ** 2
end

value = 100 
puts sq_sum(value) - sum_sq(value)
