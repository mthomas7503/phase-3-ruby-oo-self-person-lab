require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness=(value)
       @happiness = if value <=0 then @happiness = 0
                elsif value >= 10 then @happiness = 10
                else value
                end
    end

    def hygiene=(value)
        @hygiene = if value <=0 then @hygiene = 0
                 elsif value >= 10 then @hygiene = 10
                 else value
                 end
     end

     def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

     def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath

        self.hygiene += 4

        if @hygiene >= 10
            self.hygiene = 10
        elsif @hygiene > 10
            hygiene
        end
    
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        
        self.hygiene -= 3
        self.happiness += 2

        if @hygiene <= 0
            self.hygiene = 0
        elsif @hygiene < 0
            hygiene
        end
    
        if @happiness >= 10
            self.happiness = 10
        elsif @happiness < 10
            self.happiness
        end
    
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3

        if @happiness >= 10
            self.happiness = 10
        elsif @happiness < 10
            happiness
        end

        "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        
     if topic == "politics" 
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
     elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
     else
        "blah blah blah blah blah"
     end
    end
end
#binding.pry
