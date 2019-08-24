puts gets.scan(/R+L+/).map{|a|a.split(/(?<=R)(?=L)/)}
.map{|a|
  [
    '0 ' * (a[0].size-1),
    ((a[0].size/2.0).ceil + (a[1].size/2.0).floor).to_s + ' ',
    ((a[0].size/2.0).floor + (a[1].size/2.0).ceil).to_s + ' ',
    ('0 ' * (a[1].size-1))
  ].join
}.join.chop
