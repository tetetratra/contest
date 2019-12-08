require 'pp'
sx, sy, tx, ty = gets.split.map(&:to_i)

c = Array.new(ty-sy){Array.new(tx-sx,false)}
p c
