require "pp"
stdin = <<'EOF'
W........WW.
.WWW.....WWW
....WW...WW.
.........WW.
.........W..
..W......W..
.W.W.....WW.
W.W.W.....W.
.W.W......W.
..W.......W.
EOF

stdin = <<'EOF'
W..W.W...WW.
.WWW.....WWW
....WW...WW.
.........WW.
W.....W.....
..W......W..
.W.W.....WW.
W.W.W.....W.
.W.W......W.
..W....W..W.
EOF

$arr = stdin.split("\n").map{|a|a.split(//)}

$rowsize = $arr.size
$colsize = $arr[0].size

def lake(row,col)
  $arr[row][col] = '.'
  -1.upto 1 do |vx|
    -1.upto 1 do |vy|
      next if vx == 0 && vy == 0
      if (row + vy >= 0 && row + vy < $rowsize && col + vx >= 0 && col + vx < $colsize)
        if $arr[row + vy][col + vx] == 'W'
          lake(row + vy, col + vx)
        end
      end
    end
  end
end

count = 0
$rowsize.times do |row|
  $colsize.times do |col|
    if $arr[row][col] == 'W'
      lake(row, col)
      count += 1
      pp $arr
      puts
    end
  end
end
p count
