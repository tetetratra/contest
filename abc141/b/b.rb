s = gets.chomp.chars
aaa = s.map.with_index(1) do |ss,i|
  if i.odd?
    ss == 'R' ||ss == 'U' ||ss == 'D'
  else
    ss == 'L' ||ss == 'U' ||ss == 'D'
  end
end.all?{|a|a == true}
puts aaa ? 'Yes' : 'No'
