class LRUCache
    def initialize
        @size = size
        @cashe = []
    end

    def count
      # returns number of elements currently in cache
      @cashe.count
    end

    def add(el)
      # adds element to cache according to LRU principle
        # not really sure how to do the cashe adding yet. Still trying to understand how LRU works
    end


    def show
      # shows the items in the cache, with the LRU item first
      puts @cashe
      nil
    end

    private
    # helper methods go here!

  end