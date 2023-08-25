require_relative 'module'
 
class MyList
  include Enumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end


