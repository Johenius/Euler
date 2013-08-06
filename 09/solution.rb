#!/usr/bin/env ruby

def is_valid_pyth_triple? (a, b, c)
  return true if a ** 2 + b ** 2 == c ** 2
  return false
end

def sums_1000? (a, b, c)
  return true if a + b + c == 1000
  return false
end

as = (1..500)
valid_tuples = []

as.each { |x|
  (x..500).each { |y|
    (y..500).each { |z|
      valid_tuples.push([x, y, z]) if is_valid_pyth_triple?(x, y, z)
    }
  }
}

tuple = valid_tuples.select { |x| sums_1000?(x[0], x[1], x[2]) }
puts 
