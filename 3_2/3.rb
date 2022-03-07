
def minimum_removal(beans)
  beans = beans.sort.reverse

  cost = 0
  before = beans[0]
  beans[1..].each.with_index(1) do |b, size|
    cost_before = (before - b) * size
    b
    p [cost_before, b]
    p cost
    if cost_before >= b
      p :B
      cost += b
    else # cost_before < b
      p :BEFORE
      cost += cost_before
      before = b
    end
  end
  cost
end

# beans = [6,5,4,1]
# p minimum_removal(beans) # 4
# puts

# beans = [10,3,2,2]
# p minimum_removal(beans) # 7
# puts

# beans = [94,63,43,12]
# p minimum_removal(beans) # 83
# puts

beans = [35,27,25,17,16,10,8,5,4,1]
p minimum_removal(beans) # 68
puts

