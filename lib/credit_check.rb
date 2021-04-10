
def luhn_algorithm(card_array)
  card_array.each_with_index.map { |digit, index|
    digit = digit.to_i

    if index.even?
      digit = digit *= 2
      if digit >= 10
        digit.digits.sum
      else
        digit
      end

    else
      digit
    end
  }.sum
end


def validate_card(card_number)
  card_array = card_number.split("")
  luhn_algorithm(card_array) % 10 == 0
 end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
# def validate_card(card_number)
#   card_array = card_number.split("")
#
#   if luhn_algorithm(card_array) % 10 == 0
#     puts "The number #{card_number} is valid!"
#   else
#     puts "The number #{card_number} is invalid!"
#   end
#  end
