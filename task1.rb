class Array
  def my_map(&block)
    result = []
    each do |element|
      result << block.call(element)
    end
    result
  end
end
