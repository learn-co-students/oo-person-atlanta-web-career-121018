require 'pry'

class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
      # binding.pry
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    # @happiness = happiness unless happiness > 10
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    # old_hygiene = @hygiene
    #   old_hygiene = old_hygiene + 4
    # if old_hygiene <= 10
    #   @hygiene = old_hygiene
    # else @hygiene = 10
    # #    @hygiene + 4
    # end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
