class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10
    @stuffInIntestine = 0

    puts @name + 'is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInBelly = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true

    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the romm with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'toss'
    passageOfTime
  end

  def rock
    puts 'rock'
    @asleep = true
    passageOfTime
    if @asleep
      @asleep = false
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly -= 1
      @stuffInIntestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!'
      exit # 프로그램 종료
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'wakes up suddenly'
      end
      puts @name
    end

    if poopy?
      if @asleep
        @asleep = false
      end
      puts @name + ' !!'
    end
  end
  
end

pet = Dragon.new 'Inpyeong'
