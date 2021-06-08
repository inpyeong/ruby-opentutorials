a = array.new
a += [123]
puts a.to_s # [123]

b = time.new
puts b.to_s
puts b + 60

puts time.mktime 2021, 6, 8, 17, 23



colorarray = ['red', 'green', 'blue']
colorhash = {'strings' => 'red', 'numbers' => 'green', 'keywords' => 'blue'}

colorarray.each do |color|
  puts color
end
colorhash.each do |codetype, color|
  puts codetype + ': ' + color
end

weirdhash = hash.new
now = time.new
weirdhash[now] = 'hash value'

puts weirdhash
puts weirdhash[now]

myhash = {:myname => 'inpyeong'}
puts myhash[:myname]

class integer
  def to_eng
    if self == 5
      puts 'five'
    end
  end
end

5.to_eng

class die

  def roll
    1 + rand(6)
  end

end

dice = []
dice.push(die.new, die.new)

dice.each do |die|
  puts die.roll
end

class newdie
  def roll
    @numbershowing = 1 + rand(6)
  end

  def showing
    @numbershowing
  end
end

newDie = NewDie.new
newDie.roll
puts newDie.showing
puts newDie.showing

newDie.roll
puts newDie.showing
puts newDie.showing
