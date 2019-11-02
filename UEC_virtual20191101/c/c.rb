n = gets.to_i
arr = []
n.times do
  arr << gets.to_i
end
res = 999999999999
st = Time.now.to_f
n.times do |i|
  a = arr[i]
  1.upto(3) do |color|
    arr[i] = color
    prearr = arr.chunk_while{|x,y|x==y}.to_a.select{|x|x.size <= 3}.flatten
    prearr2 = prearr.chunk_while{|x,y|x==y}.to_a.select{|x|x.size <= 3}.flatten
    while prearr != prearr2
      prearr = prearr2
      prearr2 = prearr.chunk_while{|x,y|x==y}.to_a.select{|x|x.size <= 3}.flatten
    end
    # p prearr2
    res = prearr2.size if prearr2.size < res

    if Time.now.to_f - st >= 9.5
      p res
      exit
    end
  end
  arr[i] = a
end

p res
