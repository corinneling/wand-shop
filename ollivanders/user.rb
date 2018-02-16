require_relative 'options'
require 'colorize'

module User
  include Options

    # returns user input minus 1 to line up with Options#show_elements indexes
    def get_user_input
      gets.chomp.to_i - 1
    end

    # takes in an integer refering to index of keys or values
    # prompts user based on array of values printed & stores choice in a var
    def choose_value key, value
      if key != :spells
        choice = show_values(key, value)[ get_user_input ]
        puts "You chose #{choice}".colorize(:cyan)
      else
        @spells = []
        show_values(key, value)
        while @spells.length <= 10
          puts "Any others?"
          @choice = value[ get_user_input ]
          if @choice == 'Avada Kedavra'
            puts "Umm, yeah..I'm going to have to report you to the Aurors for using Avada Kedavra."
            exit(0)
          else
          @spells << @choice
        end
      end
        puts "You chose #{@spells.join(", ")}".colorize(:cyan)
      end
    end

    # nice thank you for the user that uses Time.now
    def thank_you
      time = Time.now.strftime("%I:%M%p")
      puts "\nThank you, We finished fixing your wand at #{time}. That'll be 100 million Galleons"
    end

end
