class Challenge1
  def self.balanced?(string)
    pairs = { ')' => '(', '}' => '{', ']' => '['}
    opening_char = ['(', '[', '{']
    closing_char = [')', ']', '}']
    stack = []
      string.each_char do |item| #iterate to each character of array
        if opening_char.include?(item)  #if it is an opening character, put in the stack
          stack.push(item)
        else closing_char.include?(item) #check if next character is a closing char
          if stack.empty?
            return false
          elsif closing_char != stack.last
            return false
          else closing_char == stack.last                  # if it is a match, pop the last character from the stack
            stack.pop(item)
          end                  
        end
      end
      if stack.empty?
        true
      else
        false 
      end
   end
end
