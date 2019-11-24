p gets.chomp.split('+').map{|ss|ss.split('*').map(&:to_i)}.reject{|ss|ss.any?{|n|n.zero?}}.size
