class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
    accumulator ||= self.first
    prc ||= Prc.new {|a,b| a += b}
    self.each do |ele|
      accumulator += prc.call(ele)
    end
    accumulator
  end
end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
  return false if num < 2
  (2...num).none? {|ele| num % ele == 0}
end

def primes(num)
  arr = []
  i = 1
  while arr.length < num
    arr << i if is_prime?(i)
  i+=1
  end
  arr
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  factorials = factorials_rec(num-1)
  factorials <<  (num-1) * factorials[-1]
  factorials
end

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
  end
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    sym_subs = []
    (0...self.length).each do |i1|
      (0...self.length).each do |i2|
        if i2 > i1
          
          tested_subs = self[i1..i2]
          sym_subs << tested_subs if tested_subs == tested_subs.reverse
        end
      end
    end
    sym_subs
  end
end



class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)



  end

  private
  def self.merge(left, right, &prc)
  end
end
