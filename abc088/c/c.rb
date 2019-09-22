# Yes No y n
require 'pp'
c = [nil]
3.times do
  c << [nil] + gets.split.map(&:to_i)
end
puts [
c[1][1] + c[2][2] == c[1][2] + c[2][1],
c[2][2] + c[3][3] == c[2][3] + c[3][2],
c[1][2] + c[2][3] == c[1][3] + c[2][2],
c[2][1] + c[3][2] == c[2][2] + c[3][1]
].all? {|x| x} ? 'Yes' : 'No'
