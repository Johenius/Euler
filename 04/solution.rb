#!/usr/bin/env ruby

def is_palindrome?(n)
  m = n.to_s
  l = m.length
  (0..(l/2).round).each { |x| return false if m[x] != m[l-x-1] }
  return true
end

n = (1..999)
m = (1..999)
highest = 0

n.each { |x| 
  m.each { |y|
    v = x * y
    if v > highest and is_palindrome? v
      highest = v
    end
  }
}

puts highest
  
