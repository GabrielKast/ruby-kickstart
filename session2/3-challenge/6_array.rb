# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

# require 'prime'

def prime_chars? chars
    sum = chars.reduce(0) { | s, ch| s+ch.length}
    sum.prime?
    # Other solution
    # Prime.instance.prime?(sum) 
end

def Integer.prime?
    return false if (self==1 || self%2==0)
    3.step(Math.sqtr(self), 2) do |x|
        return false if self%x==0
    end
    return true
end