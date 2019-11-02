require 'pp'
x = $<.to_a.map(&:to_i)
puts x[0..9].max(3).inject(:+).to_s + ' ' +  x[10..-1].max(3).inject(:+).to_s
