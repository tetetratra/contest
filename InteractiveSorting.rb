# ボールを軽い順にソートしてください。
$stdout.sync = true
def query(a, b) # a > b ならtrue
  puts "? #{a} #{b}" # これはテスト出力じゃないから消したらだめ
  str = gets.chomp
  retult = str == '>'
  retult
end
mozisuu, count = gets.split.map(&:to_i)
hash = {
  A: nil, B: nil, C: nil, D: nil, E: nil, F: nil, G: nil, H: nil, I: nil, J: nil, K: nil, L: nil, M: nil, N: nil, O: nil, P: nil, Q: nil, R: nil, S: nil, T: nil, U: nil, V: nil, W: nil, X: nil, Y: nil, Z: nil
}

def sort(a, b)

end
