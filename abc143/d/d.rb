require 'pp'

n = gets.to_i
l = gets.split.map(&:to_i)
l.sort!
p l


l.each_with_index do |a,ai| # A
  l.each_with_index do |b,bi| # B
    next if ai >= bi
    ci  = l.find_index{|c|c < a+b}
    ci2 = l.find_index{|c|a-b < c && b-a < c}
    next if ci.nil? || ci2.nil? || ci == ai || ci == bi || ci2 == ai || ci2 == bi
    p [ai,bi,ci, ci2]
  end
end
# 1 0 23
