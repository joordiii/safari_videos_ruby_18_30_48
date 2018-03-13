require 'pry'
require 'pry-byebug'

status = ''
until status == 'S' || status == 'N'
  p 'Please enter your status S or M (S=single/M=married):'
  status = gets.chomp
end

salary = nil
while salary == nil
  p 'Please enter your salary:'
  # --rescue nil-- allows me to continue working with the nil result
  salary = Integer(gets) rescue nil # !important
  if salary == nil
    p '-- enter a valid number --'
  end
end



if status === 'S'
  case salary 
    when 0..9275
      p 'Your tax Rate is 10%'
    when 9276..37650
      print 'Your tax Rate is 15%'
    when 37651..91150
      p 'Your tax Rate is 25%'
    when 91151..190150
      p 'Your tax Rate is 28%'
    when 190151..413350
      p 'Your tax Rate is 33%'
    when 413351..415050
      p 'Your tax Rate is 35%'
    when 415051..100_000_000
      p 'Your tax Rate is 39.6%'
    else
      p 'Congratulation!!!!'
  end
elsif status === 'M'
  case salary 
    when 0..18550
      p 'Your tax Rate is 10%'
    when 18551..75300
      p 'Your tax Rate is 15%'
    when 75301..151900
      p 'Your tax Rate is 25%'
    when 151901..231450
      p 'Your tax Rate is 28%'
    when 231451..413350
      p 'Your tax Rate is 33%'
    when 413351..466950
      p 'Your tax Rate is 35%'
    when 415051..100_000_000
      p 'Your tax Rate is 39.6%'
    else
      p 'Congratulation!!!!'
  end
else
  p 'Do it agian ans choose the appropiate status'
end




