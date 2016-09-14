class Array
  def my_map(&block)
    result_array = []
    for num in self

      result_array << yield(num)
    end
    return result_array

  end
end