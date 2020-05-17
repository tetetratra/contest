# abc168 E
class Integer
  def combination(k = self) # 4C2 = 6
    return 1 if k.zero?
    if @mod.nil?
      (self - k + 1..self).inject(:*) / k.factorial
    else
      (self - k + 1..self).inject{|i,m|i * m % @mod} * k.factorial.modinv % @mod
    end
  end

  def factorial(step = 1) # 4! = 24
    return 1 if self.zero?
    if @mod.nil?
      (1..self).inject(:*)
    else
      (1..self).inject{|i,m|i * m % @mod}
    end
  end
  alias :C :combination
end

n = gets.to_i
ab = n.times.map {
  gets.split.map(&:to_i)
}
pp ab

c = ab.map{|(a,b)| a.to_r / b.to_r }.sort

pp c

cnt = 0
n.downto(1) do |nn|
  r = n.C(nn)
  cnt += r
  p [cnt,r]
end
p cnt

cnt2 = 0
c.each do |cc|
  d = c.bsearch{|x| x * cc == -1}
  p d
end
p cnt2

