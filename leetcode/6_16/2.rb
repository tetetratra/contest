# https://leetcode.com/problems/my-calendar-i/

class MyCalendar
  def initialize()
    @b = []
  end

  def book(s, e)
    if @b.any? { |(ss, ee)|
      (ss...ee).cover?(s) ||
      (ss...ee).cover?(e) ||
      (s...e).cover?(ss) ||
      (s...e).cover?(ee - 0.1)
    }
      false
    else
      @b << [s, e]
      true
    end
  end
end

c = MyCalendar.new()
p c.book(10, 20)
p c.book(15, 25)
p c.book(20, 30)

