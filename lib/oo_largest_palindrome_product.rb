# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def initialize
    @three_digit_nums = 100..999
    @max = 999
    @largest_palindrome = 0
  end

  def answer
    @three_digit_nums.each do |num|
      @max.downto(num) do |i|
        product = num * i
        if product > @largest_palindrome && palindrome_test(product)
          @largest_palindrome = product
        end
      end
    end
  @largest_palindrome
  end

  def palindrome_test(num)
    if num.to_s == num.to_s.split("").reverse.join("")
      true
    end
  end
end
