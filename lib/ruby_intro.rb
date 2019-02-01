# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each {|x| result += x}
  return result
end

def max_2_sum arr
  # YOUR CODE HERE
  result = 0

  if arr.length == 1
    result = arr[0]
  elsif arr.length > 1
    result = arr.max
    new_arr = arr.clone
    new_arr.delete_at(new_arr.index(arr.max))
    result += new_arr.max
  end

  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |x|
    sub_arr = arr.clone
    sub_arr.delete_at(sub_arr.index(x))
    if sub_arr.include?(n - x)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[/[a-zA-Z]+/]  != s
    return false
  end
  vowels = ['a', 'e', 'i', 'o', 'u']
  return !vowels.include?(s.downcase[0])
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s[/[0-1]+/] == s && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    if @price.to_s.match(/[.]\d{2}/)
      return "$#{@price}"
    elsif @price.to_s.match(/[.]\d{1}/)
      return "$#{@price}0"
    else
      return "$#{@price}.00"
    end
  end
end
