p (1..gets.to_i).to_a.map(&:to_s).map(&:size).select(&:odd?).size
