# agc044 A
require 'prime'
t = gets.to_i
t.times do
  called = Hash.new(false)
  n, a, b, c, d = gets.split.map(&:to_i)
  f = lambda { |x|
    return 0 if x == 0
    called[x] = true
    arr = [
      x % 2 == 0 && !called[x/2] && (f.(x/2) + a),
      x % 3 == 0 && !called[x/3] && (f.(x/3) + b),
      x % 5 == 0 && !called[x/5] && (f.(x/5) + c),
      !called[x-1] && (f.(x-1) + d),
      !called[x+1] && (f.(x+1) + d)
    ].select(&:itself)
    called[x] = arr.min
    arr.min
  }
  p f.(n)
end

