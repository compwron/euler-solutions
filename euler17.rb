numbers = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens = ['', 'ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety', 'one hundred']
hundreds = []
numbers.each {|number| hundreds << number + " hundred"}
one_thousand = "one thousand"
puts hundreds
total = 0


hundreds.each{ |hundred|
  tens.each {|ten| 
    numbers.each {|number| 
      total += (hundred.length + " and ".length + ten.length + "-".length + number.length)
      puts hundred + " and " + ten + "-" + number
    }
  }
}
  
puts total




