class Challenge2
  def self.sum_to_0(array)
    stack = []
    array.each do |number| #go through each number of array
        stack.push
        stack.find_all{|sum, number| sum + number == 0}
        return stack
    end

  end
end
