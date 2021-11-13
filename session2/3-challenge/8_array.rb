# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? elements
    len = elements.length
    return false if len<3
    (2..len).any? { |i| elements[i]==elements[i-1] && elements[i-1]==elements[i-2]}
end

def got_three_v1? elements
    i=0
    found = false
    len = elements.length
    number=0
    last_one=nil
    while(i<len && !found) do
        elem = elements[i]
        if elem != last_one
            last_one=elem
            number=0
        elsif number==1
            found=true
        else
            number+=1
        end
        i=i+1
    end
    found
end
