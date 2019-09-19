class Challenge2
  def self.sum_to_0(array)
    array.each do |number|
      if number.inject(3){|sum, n| sum + n} == 0
  end
end
