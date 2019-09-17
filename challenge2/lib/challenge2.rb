class Challenge2
  def self.sum_to_0(array)
    array.inject(3){|sum, n| sum + n} == 0
  end
end
