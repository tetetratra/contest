class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end
# 2 4 0
require 'pp'
n = gets.to_i
c = []
n.times do
  c << gets.to_i
end
# p c
cnt = 0
loop do
  # sleep 1
  pre = c[0]
  target_index = 0
  target = nil
  1.upto(n-1) do |i|
    if c[i] < pre
      target = c[i]
      target_index = i
      break
    end
    pre = c[i]
  end
  if target.nil?
    # p 'sorted!'
    break
  end
  # puts "#{target}(c[#{target_index}])を移したい"
  place = nil
  if target < c[0]
    place = 0
  else
    1.upto(target_index) do |i|
      if c[i-1] < target && target < c[i]
        place = i
      end
    end
  end
  # puts "c[#{place}]の場所へ。"
  (target_index - place).times do |i|
    c.swap!(target_index - i, target_index - 1 - i)
  end
  cnt += 1
  # p c
end
p cnt
# 昇順になってないやつを左から探して、正しい位置に入れていく
