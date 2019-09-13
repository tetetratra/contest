puts $<.to_a[1..-1].map{|a|a.chomp.reverse}.sort.map(&:reverse).join("\n")
