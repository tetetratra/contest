n = read_line.to_i
arr = [] of Int32
n.times do
  arr << read_line.to_i
end
st = Time.now.to_f
res = 0
n.times do |i|
  a = arr[i]
  1.upto(3) do |color|
    arr[i] = color
    prearr = arr.chunk_while{|x,y|x==y}.to_a.select{|x|x.size <= 3}.flatten(1)
    prearr2 = prearr.chunk_while{|x,y|x==y}.to_a.select{|x|x.size <= 3}.flatten(1)
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
