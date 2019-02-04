# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length == 1
    sum = arr[0]
  elsif arr.length > 1
    arr.sort! {|x,y| y<=>x}
    sum = arr[0] + arr[1]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  else
    arr.combination(2).to_a.each{|pair|
      if pair.sum == n
        return true
      end
    }
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if (s =~ /[aeiouAEIOU]|[[:punct:]]/) == 0
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s =~ /[^01]/) != nil
    return false
  end
  if (s =~ /00$/) != nil || s == '0'
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
    
  def isbn
    @isbn
  end
  
  def isbn= i 
    @isbn = i
  end
  
  def price
    @price
  end
  
  def price= p
    @price = p
  end 
  
  def price_as_string
    return '$'+('%.2f' % price)
  end 
end
