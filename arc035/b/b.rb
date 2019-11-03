
class Integer
  @mod = nil
  def self.set_mod(mod = 10**9 + 7)
    @mod = mod
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    if @mod.nil?
      (1..self).inject(:*)
    else
      (1..self).inject{|i,m|i * m % @mod}
    end
  end
  alias :! :factorial
end

Integer.set_mod(10 ** 9 + 7)
n = gets.to_i
s = []
n.times do
  s << gets.to_i
end
s.sort!
sum = 0
n.times do|i|
  sum += s[i] * (n-i)
end
p sum
p s.group_by(&:itself).map{|k,v|v.size.!}.inject{|m,i|(m*i) % (10**9 + 7)} % (10**9 + 7)
