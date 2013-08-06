#!/usr/bin/env ruby

def is_prime?(n)
  (2..Math.sqrt(n).round).each { |x| return false if n % x == 0 }
  return true
end

counter = 0
target = 10001
1.upto(Float::INFINITY).each { |x|
  counter += 1 if is_prime? x
  if counter == target + 1 # off-by-one error
    puts x 
    break
  end
  #puts "." + x.to_s if x % 10000 == 0 # DEBUG
}
