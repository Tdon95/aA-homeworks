quadratic

def quadratic_fish(fishes)
    fishes.each_with_index do |fish1, idx1|
        max = true
        fishes.each_with_index do |fish2, idx2|
            next if idx1 == idx2
            max = false if fish2.length > fish1.length
        end
        return fish1 if max
    end
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new{|a,b| a<=>b}
        retun self if self.length < 1

        mid = self.length / 2
        left = self.take(mid)
        right = self.drop(mid)

        sorted_l = left.merge_sort(&prc)
        sorted_r = right.merge_sort(&prc)

        Array.merge(sorted_l, sorted_r, &prc)
    end
    private
    def self.merge(left, right, &prc)
        merged = []
        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1 
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end
        merged + left + right
    end
end

def nlogn_fish(fishes)
    prc = Proc.new{|a,b| a.length <=> b.length}
    fishes.merge_sort(&prc)[0]
end

def lin_fish(fishes)
    biggest = fishes.first
    fishes.each do |fish|
        if fish.length > biggest.length
            biggest = fish
        end
    end
    biggest
end