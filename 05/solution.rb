#!/usr/bin/env ruby

def fn(n, m)
  (1..m).each { |x| return false if n % x != 0 }
  return true
end

starting_value = 2521
target = 20
q = 0

1.upto(Float::INFINITY).each { |x|
  q = fn(x, target) ? x : 0
  break if q != 0
  puts x if x % 1000000 == 0 # DEBUG
}

puts q
