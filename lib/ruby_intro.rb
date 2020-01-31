# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  len=arr.length
  if len==0
    return 0
  elsif len==1
    return arr[0]
  else  
    arrs = arr.sort
    sum2 = arrs[-1]+arrs[-2]
    return sum2
  end
end

def sum_to_n? arr, n
  a=Hash.new(0)
  b=arr.length
  if b<2
    return false
  end
  for i in 0..(b-1)
    if a.has_key?(n-arr[i])
      return true  
    else 
      a[arr[i]]=i
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s=~/^[a-zA-Z]/
    if s=~/^[auoieAUIOE]/
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s=="")
    return false
  elsif (s=~/[^01]/) == 0
    return false
  end
 
  if s =~ /00$/
    return true
  elsif s=='0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if price <= 0
      raise ArgumentError.new('Wrong Price') 
    end
    
    if isbn.empty?
      raise ArgumentError.new('Wrong ISBN')
    end
    
    @isbn = isbn
    @price = price
    
  end

  attr_accessor :isbn, :price
  
  def price_as_string
    '$%.2f' % @price
  end
end
