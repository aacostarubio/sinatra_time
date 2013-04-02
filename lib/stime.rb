class Stime

 def date_format(input)
  letter_from_month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Sep", "Oct", "Nov", "Dec"]
  word_from_month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  new_time = input

  if letter_from_month.include? new_time.split[0]
    return "time.strftime" + "(%b" + " %-d" + " %Y)"
  elsif word_from_month.include? new_time.split[0]
    return "time.strftime" + "(%B" + " %-d" + " %Y)"
  end

 end

end
