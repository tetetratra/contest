n = gets.to_i
a = []
a << gets.to_i
a << gets.to_i
a << gets.to_i
a << gets.to_i
a << gets.to_i


m = a.min + 0.0
mi = a.index(m)

puts (n / m).ceil.to_i + 4
# ボトルネックの箇所だけを、あまりに気をつけて考えればOK
