# abc117 B
n = gets.to_i
l = gets.split.map(&:to_i).sort


puts l[-1] < l[0..-2].inject(:+) ? 'Yes' : 'No'
