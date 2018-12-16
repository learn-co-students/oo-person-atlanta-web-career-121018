
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness
    end

    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def get_paid (salery)
        self.bank_account += salery
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (instance_of_person)
        self.happiness += 3
        instance_of_person.happiness += 3
        "Hi #{instance_of_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        case topic
        when "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
