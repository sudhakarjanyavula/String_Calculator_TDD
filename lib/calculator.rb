class Calculator

    def add(numbers)
        if numbers.empty?
          return 0
        else
          nums = numbers.split(",").map(&:to_i)
          return nums.reduce(0, :+)
        end
    end
    def multiple_numbers(numbers)
      if numbers.empty?
        return 0
      else
        nums = numbers.split(",").map(&:to_i)
        return nums.reduce(0, :+)
      end
    end
end
  