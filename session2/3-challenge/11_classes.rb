# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :number
  def initialize n
    if n<0
      n=0
    elsif n>99
      n=99
    end
    self.number = n
  end

  def print_song
    return if self.number==0
    self.number.step(1, -1).each do |i|
      number_in_letter = translate_number(i).capitalize
      s = if i!=1 then "s" else "" end
      number_in_letter_1 = translate_number(i-1).capitalize
      s_1 = if i-1!=1 then "s" else "" end
      puts "#{number_in_letter} bottle#{s} of beer on the wall,"
      puts "#{number_in_letter} bottle#{s} of beer,"
      puts "Take one down, pass it around,"
      puts "#{number_in_letter_1} bottle#{s_1} of beer on the wall."
    end
  end
end

def translate_number n
  case n
  when 0
    "zero"
  when 1
    "one"
  when 2
    "two"
  when 3
    "three"
  when 4
    "four"
  when 5
    "five"
  when 6
    "six"
  when 7
    "seven"
  when 8
    "eight"
  when 9
    "nine"
  when 10
    "ten"
  when 11
    "eleven"
  when 12
    "twelve"
  when 13
    "thirteen"
  when 14
    "fourteen"
  when 15
    "fifteen"
  when 16
    "sixteen"
  when 17
    "seventeen"
  when 18
    "eighteen"
  when 19
    "nineteen"
  else
    d = n/10
    rest = n % 10
    decimals = case d
          when 2
            "twenty"
          when 3
            "thirty"
          when 4
            "forty"
          when 5
            "fifty"
          when 6
            "sixty"
          when 7
            "seventy"
          when 8
            "eighty"
          when 9
            "ninety"
          end
    if rest == 0
      decimals
    else
      decimals + "-" + translate_number(rest)
    end
  end    
end


translate_number 2
translate_number 1
translate_number 17
translate_number 20
translate_number 35
