s = gets.chomp
ac = true

ac = false unless s[0] == 'A'
# p ac
ac = false unless s[2..-2].chars.count{|x|x=='C'} == 1
# p ac
cind = s[2..-2].chars.find_index{|x|x=="C"}
ac = false unless s.chars[2..-1].reject.with_index{|x,i|i==cind}.all?{|x|/[a-z]/ === x}
ac = false unless s.chars[1].match(/[a-z]/)
puts ac ? 'AC' : 'WA'
