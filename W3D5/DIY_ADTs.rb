  class Stack
    attr_reader :arr
    def initialize
      # create ivar to store stack here!
      @arr = []
    end

    def push(el)
      # adds an element to the stack
        arr.push(el)
    end

    def pop
      # removes one element from the stack
      arr.pop(el)
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      arr.last
    end
  end

  class Queue
    attr_reader :arr
    def initialize
        arr = []
    end
    def enqueue(ele)
        arr.push(ele)
    end
    def dequeue(ele)
        arr.shift(ele)
    end
    def peek(ele)
        arr.first
    end
  end

  class Map
    attr_reader :arr
    def initialize
        arr = []
    end
    
  end