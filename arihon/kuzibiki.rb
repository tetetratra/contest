# 4for
# 16.3s O(n^4)
# 3for
# 0.97s O(n^3 * logn)
# 2for + 2for
# 0.03s O(n^2*logn + n^2*logn)
def solve
  m = 500
  k = (0..150).to_a
  kk = []
  k.each do |a|
    k.each do |b|
      kk << a+b
    end
  end
  kk.sort!
  k.each do |a|
    k.each do |b|
      kk.binary_search(m - a - b)
    end
  end
  false
end

class Array
  def binary_search(num)
    btm = 0
    top = self.size
    while top - btm > 1
      mid = (top+btm)/2
      if self[mid] == num
        return true
      end
      self[mid] > num ? top=mid : btm = mid
    end
    false
  end
end



sss = Time.now
p solve
eee = Time.now
p eee - sss
