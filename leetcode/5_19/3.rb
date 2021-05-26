def single_non_duplicate(n)
  l = n.size
  i = l / 2
  loop do
    print "i:"
    p i
    if n[i] == n[i + 1]
      if i.even?
        i = 
      else
        i = 
      end
    elsif n[i] == n[i - 1]
      if i.even?
        i = i/2
      else
        i = 
      end
    else
      print "ans:"
      return n[i]
    end
    sleep 1
  end
end

# p single_non_duplicate([1,1,2,3,3,4,4,8,8]) #=> 2
puts "-----------------------------------------"
single_non_duplicate([3,3,7,7,10,11,11]) #=> 10

