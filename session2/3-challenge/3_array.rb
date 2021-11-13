# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    result=""
    self.split(//).each.with_index { | l, i | if i%2==0 then result << l end }
    return result
  end
end
