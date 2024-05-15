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

    def lines_between_numbers (numbers)
      if numbers.empty?
        return 0
      else
        nums = numbers.split(/[,\n]/).map(&:to_i)
        return nums.reduce(0, :+)
      end
    end

    def differentDelimiters(numbers)
      if numbers.empty?
        return 0
      else
        delimiter = ','
        if numbers.start_with?("//")
          delimiter = numbers[2]
          numbers = numbers[4..-1]
        end
        nums = numbers.split(/[#{delimiter}\n]/).map(&:to_i)
        return nums.reduce(0, :+)
      end
    end
end
  