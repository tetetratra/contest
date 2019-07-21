class Integer
  def combination(k = self)
    return 1 if k.zero?
    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k = self)
    return 1 if k.zero?
    (self - k + 1..self).inject(:*)
  end

  def factorial
    return 1 if self.zero?
    (1..self).inject(:*)
  end
end

class Array
  def split(&iterater)
    iterater ||= proc { |a| !a }
    result = []
    tmp = []
    each do |a|
      if iterater.call(a)
        result << tmp unless tmp.empty?
        tmp = []
      else
        tmp << a
      end
    end
    result << tmp unless tmp.empty?
    result
  end

  def sum
    self.inject(&:+)
  end

  def ruiseki_set(&iterater)
    memo_left = self.first
    ruiseki_left = [self.first]
    self[1..-1].map.with_index do |item, index|
      memo_left = iterater.call(memo_left, item, index)
      ruiseki_left << memo_left
    end
    memo_right = self.last
    ruiseki_right = []
    self[0..-2].reverse.map.with_index do |item, index|
      memo_right = iterater.call(memo_right, item, index)
      ruiseki_right << memo_right
    end
    ruiseki_right.reverse!
    ruiseki_right << self.last
    [ruiseki_left, ruiseki_right]
  end

  def ruiseki_find(&iterater)
    return 'ruiseki_set の返り値で呼び出してね' unless self[0] && self[1] && self.size == 2 && self[0].size == self[1].size
    ruiseki = []
    ruiseki << self[1][1]
    1.upto(self[0].size-2) do |i|
      ruiseki << iterater.call(self[0], self[1], i)
    end
    ruiseki << self[0][-2]
    ruiseki
  end
end

p arr = [8,8,12,8,9,3,6]
ruiseki = arr.ruiseki_set{|item, memo| memo+item}
p ruiseki[0]
# p ruiseki[1]
p ruiseki.ruiseki_find{|left,right,i| left[i+1] - left[i] }
