# your code goes here
require 'pry'
class Person
    
        attr_reader :name 
        attr_accessor :happiness, :hygiene, :bank_account

        def initialize(name,bank_account=25,happiness=8,hygiene=8)
            @name = name
            @bank_account = bank_account
            @happiness = happiness
            @hygiene = hygiene
            
        end
        #replaced by reader
        # def name
        #     @name
        # end

        # def bank_account
        #     @bank_account
        # end

        def bank_account=(bank_account)
            @bank_account = bank_account
        end
        #replaced by reader
        # def happiness
        #     @happiness
        # end

        def happiness=(happiness)
            @happiness = happiness

            if @happiness >= 10
                @happiness = 10
            elsif @happiness < 0
                @happiness = 0
            else
                @happiness = happiness
            end
            @happiness
        end
        #replaced by reader
        # def hygiene
        #     @hygiene
        # end

        def hygiene=(hygiene)

            @hygiene = hygiene

            if @hygiene >= 10
                @hygiene = 10
            elsif @hygiene <= 0
                @hygiene = 0
            end

            @hygiene
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

        def get_paid(money_to_be_added)
            @bank_account = @bank_account + money_to_be_added
            p "all about the benjamins"
        end

        def take_bath
            @hygiene = @hygiene + 4
            self.hygiene=(@hygiene)
            p "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def work_out
            @happiness = @happiness + 2
            @hygiene = @hygiene - 3
            self.hygiene=(@hygiene)
            self.happiness=(@happiness)
            p "♪ another one bites the dust ♫"
        end

        def call_friend(friend)
            @happiness = @happiness + 3
            friend.happiness = friend.happiness + 3
            
             self.happiness=(@happiness)
             friend.happiness=(friend.happiness)
            p "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(friend,topic)
            if topic == "politics"
                @happiness -= 2
                friend.happiness -= 2
                self.happiness=(@happiness)
                friend.happiness=(friend.happiness)
                "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                @happiness += 1
                friend.happiness += 1
                self.happiness=(@happiness)
                friend.happiness=(friend.happiness)
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
            end
        end


end

jesus = Person.new("jesus")
tj = Person.new("tj")
puts "tj happiness #{tj.happiness}"

puts "jesus"
p jesus.happiness
p jesus.work_out
p jesus.happiness
puts "this next line is the call method"
p jesus.call_friend(tj)
puts "\n"
puts "tj"

p tj.happiness