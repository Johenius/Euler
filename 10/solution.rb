#!/usr/bin/env ruby

def is_prime?(n)
  (2..Math.sqrt(n).round).each { |x| return false if n % x == 0 }
  return true
end

m = 2000000
n = (2...m).to_a
n.select! { |x| is_prime? x }
puts n.inject { |x, y| x + y }
