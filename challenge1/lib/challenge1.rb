class Challenge1
  def self.balanced?(string)
    array = string.gsub(/(\w)(\d)/, "")
    pairs = { '(' => ')', '{' => '}', '[' => ']'}
    stack = []
      array.each_char do |items| #iterate to each character of array
        if items == pairs.keys       # any of the item is equal to hash pairs keys, items go in array stack
          stack << items
          if items == pairs.values   # any of the item is equal to hash pairs value, the item that pairs it, gets taken out of stack
            stack.pop
            if stack.empty?          # evaluate if stack is empty, which means that
              true                     
            else
              false
            end
          end
        end
      end

  end
end
