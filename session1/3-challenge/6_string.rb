# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  init = if return_odds then 1 else 0 end
  result=""
  string.split(//).each.with_index { |letter, i| if i%2==init then result<< letter end }
  result
end
