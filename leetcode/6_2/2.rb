# https://leetcode.com/problems/asteroid-collision/

# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  prev_size = 0
  until prev_size == asteroids.size
    prev_size = asteroids.size
    alive = [true] * asteroids.size
    asteroids.map.with_index.each_cons(2) { |first, second|
      f, fi = first
      s, si = second
      if f > 0 && s < 0
        if f.abs == s.abs
          alive[fi] = alive[si] = false
        else
          di = [first, second].min_by { |(n, i)| n.abs }[1]
          alive[di] = false
        end
      end
    }
    asteroids = asteroids.zip(alive).select(&:last).map(&:first)
  end
  asteroids
end






asteroids = [5,10,-5]
[5,10]
p asteroid_collision(asteroids)
puts '-----'

asteroids = [8,-8]
[]
p asteroid_collision(asteroids)
puts '-----'


asteroids = [10,2,-5]
[10]
p asteroid_collision(asteroids)
puts '-----'

asteroids = [-2,-1,1,2]
[-2,-1,1,2]
p asteroid_collision(asteroids)
