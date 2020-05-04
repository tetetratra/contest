# abc166 B
n, k = gets.split.map(&:to_i)
a = []

sn = Array.new(n, 0)

k.times  {
  d = gets.to_i
  a << gets.split.map(&:to_i)
}


a.each do |aa|
  aa.each do |x|
    sn[x-1] += 1
  end
end

p sn.count(&:zero?)
