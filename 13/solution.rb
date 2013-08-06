#!/usr/bin/env ruby

h = []
File.open("data.txt") do |f|
  f.each do |g|
    h.push(g.split(//))
  end
end

a = Array.new(50)
