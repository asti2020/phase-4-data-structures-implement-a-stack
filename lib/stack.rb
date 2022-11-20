# your code here
class Stack
    
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise "Stack Overflow" if full?
        @stack.push(value)
    end

    def pop
        @stack.pop
    end 

    def peek
        @stack.last
    end

    # BONUS!

    def full?
        @limit && @stack.size == @limit
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def search(target)
        @stack.each do |item, idx|
            return size - idx - 1.to_s if item == target
        end
        -1
    end
end