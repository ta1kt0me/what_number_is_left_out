class SearchLeftOut
  def search_left_out(elements_except_left_out)
    sum_of_1_to_10000   = (1 + 10000) * 5000
    sum_except_left_out = elements_except_left_out.inject(:+)

    unless elements_except_left_out.size == 9999 && sum_except_left_out < sum_of_1_to_10000
      raise ArgumentError
    end

    sum_of_1_to_10000 - sum_except_left_out
  end
end
