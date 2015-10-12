# Implement your procedural solution here!

def largest_palindrome_product
  # iterate through min and max 3-digit numbers
  # only check a pair once since multiples are reciprocal:
  # store largest product: if product > largest, check if is palindrome

  three_digit_nums = 100..999
  max = 999
  largest_palindrome = 0

  three_digit_nums.each do |num|
    max.downto(num) do |i|
      product = num * i
      if product > largest_palindrome && palindrome_test(product)
        largest_palindrome = product
      end
    end
  end

  largest_palindrome
end

def palindrome_test(num)
  if num.to_s == num.to_s.split("").reverse.join("")
    true
  end
end
