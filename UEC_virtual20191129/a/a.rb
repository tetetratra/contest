require 'pp'
pas = []
jue = []
3.times do
  pas << gets.to_i
end

2.times do
  jue << gets.to_i
end

p pas.min + jue.min - 50
