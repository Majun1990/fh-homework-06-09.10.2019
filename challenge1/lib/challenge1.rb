class Challenge1
  def self.balanced?(string)
    pairs = { ')' => '(', '}' => '{', ']' => '['}
    opening_char = ['(', '[', '{']
    stack = []
      string.each_char do |item| #iterate to each character of array
        if opening_char.include?(item)
          stack.push(item)
        elsif pairs[item] == stack.last
          stack.pop
        else
          return false
        end
  
      end
      if stack.empty?
        true
      else
        false 
      end
   end
end
