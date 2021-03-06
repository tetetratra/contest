# すぬけ君は 1 〜 N の整数が等確率で出る N 面 サイコロ と表と裏が等確率で出る コイン を持っています。
# すぬけ君は、このサイコロとコインを使って今から次のようなゲームをします。
# まず、サイコロを 1 回振り、出た目を現在の得点とする。
# 得点が 1 以上 K−1 以下である限り、すぬけ君はコインを振り続ける。
# 表が出たら得点は 2 倍になり、裏が出たら得点は 0 になる。得点が 0 になった、もしくは K 以上になった時点でゲームが終了する。
# このとき、得点が K 以上である場合すぬけ君の勝ち、 0 である場合すぬけ君の負けである。
# N と K が与えられるので、このゲームですぬけ君が勝つ確率を求めてください。
# 制約 1 ≤ N ≤ 1051 ≤ K ≤ 105

N, K = gets.chomp.split(' ').map { |aa| aa.to_f }

sum = []
(1..N).each do |n|
  x = 0
  while n * (2 ** x) < K
    x += 1
  end
  sum << (
    (1 / Rational(2) ** x)
    # x
  )
end


ssum = Rational(0)
sum.each do |ss|
  ssum += ss
end


printf('%.10f', ssum / N)
