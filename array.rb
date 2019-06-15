class Array
  def split(&ite)
    ite ||= proc { |a| !a }
    result = []
    tmp = []
    each do |a|
      if ite.call(a)
        result << tmp
        tmp = []
      else
        tmp << a
      end
    end
    result << tmp
    result.delete_if(&:empty?)
    result
  end

  def sum
    self.inject(&:+)
  end
end
