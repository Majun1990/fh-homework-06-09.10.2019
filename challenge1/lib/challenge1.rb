class Challenge1
  def self.balanced?(string)
    pairs = { '(' => ')', '{' => '}', '[' => ']'}
    stack = []
    string.each_char do |items|
      if items == pairs.keys
        stack << items
      elsif items == pairs.values
        stack.pop
        true
      else
        false
      end
    end
  end
end
