require "pry"

class Person
  attr_reader :name, :happiness, :hygiene

  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    end
  end

  def hygiene=(num)
    @hygiene = num
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    self.happiness = @happiness
    self.hygiene = @hygiene
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    @happiness += 3
    person.happiness += 3

    self.happiness = @happiness
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
