module MyEnumerable
  def all?
    return true unless block_given?

    each { |item| return false unless yield(item) }
    true
  end

  def any?
    return false unless block_given?

    each { |item| return true if yield(item) }
    false
  end

  def filter
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end
