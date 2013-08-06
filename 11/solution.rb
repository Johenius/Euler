#!/usr/bin/env ruby

def prod_four_horz(grid, a, b)
  return (a..a+3).inject(1) { |prod, x| prod * grid[b][x].to_i }
end

def prod_four_vert(grid, a, b)
  return (b..b+3).inject(1) { |prod, y| prod * grid[y][a].to_i }
end

def prod_four_diag_forward(grid, a, b)
 return grid[b][a].to_i * grid[b+1][a+1].to_i * grid[b+2][a+2].to_i * grid[b+3][a+3].to_i
end

def prod_four_diag_back(grid, a, b)
 return grid[b+3][a].to_i * grid[b+2][a+1].to_i * grid[b+1][a+2].to_i * grid[b][a+3].to_i
end

def high_point(grid, a, b)
  x = []
  x.push(prod_four_horz(grid, a, b))
  x.push(prod_four_vert(grid, a, b))
  x.push(prod_four_diag_back(grid, a, b))
  x.push(prod_four_diag_forward(grid, a, b))
  return x.max
end

h = []
File.open("input.txt") do |f|
  f.each do |g|
    h.push(g.split(" "))
  end
end

max = 0

(0..17).each { |y|
  (0..17).each { |x|
    m = high_point(h, x, y)
    max = m > max ? m : max
  }
}

puts max.to_s

