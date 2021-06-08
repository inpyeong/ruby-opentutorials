def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  ret = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left / 100
  left = left - write * 100

  if write > 0
    # recursive
    hundreds = englishNumber write
    ret = ret + hundreds + ' hundred'

    if left > 0
      ret = ret + ' '
    end
  end

  write = left / 10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      ret = ret + teenagers[left-1]
      left = 0
    else
      ret = ret + tensPlace[write-1]
    end

    if left > 0
      ret = ret + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    ret = ret + onesPlace[write-1]
  end

  ret
end

puts englishNumber 0
puts englishNumber 3211
