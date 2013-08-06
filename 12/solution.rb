#!/usr/bin/env ruby

def num_divisors(n)
  a = 2 # 1 and n are always divisors
  (n**0.5).round.downto(2).each { |x| 
    a += 2 if n % x == 0
  }
  return a
end

y = 0

(1..Float::INFINITY).each { |x|
  y += x
  d = num_divisors y
  # puts y.to_s + ": " + d.to_s if d > 5 # DEBUG
  break if d > 500
}

puts y

