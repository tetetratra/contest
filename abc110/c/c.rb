puts [gets,gets].map{|x|x.chomp.chars.group_by(&:itself).map{|_,v|v.size}}.uniq.size == 1 ? 'Yes' : 'No'
