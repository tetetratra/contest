puts("------")
n, a, b, c, d = *gets.chomp.split.map(&:to_i)

s = gets.chomp.split(//)
s[a-1] = 'A'
s[b-1] = 'B'
s[c-1] = 'C'
s[d-1] = 'D'



# s.each{|ss|print("#{ss} | ")}
# print "##が含まれる?（はいってたらX）"
# s.each_cons(2) do |ss|
#   if ss == %w[# #]
#     puts true
#     exit
#   end
# end
# puts false
#
# aaaaa = c < d
# print "c < d ?=> #{aaaaa}"
# puts " trueなら無条件にOK(Bが先にゴールして、AがゴールすればOK)"
# if aaaaa
#   exit
# end
#
# print "AB.   ?=> "
# abflag = false
# s.each_cons(3) do |ss|
#   if ss == %w[A B .]
#     abflag = true
#     exit
#     break
#   end
# end
# puts abflag
#
# p s[b..(c-2)]
# print "...   ?=> "
# __flag = false
# s[b..(c-2)].each_cons(3) do |ss|
#   if ss == %w[. . .]
#     __flag = true
#     break
#   end
# end
# puts __flag
