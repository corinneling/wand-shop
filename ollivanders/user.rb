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
      if key == :spells
        puts 'test'
      else
        @choice = show_values(key, value)[ get_user_input ]
        puts "You chose #{@choice}".colorize(:cyan)
      end
    end

    # if user chose Avada Kedavra as a spell they used, prints string
    # else continues prompting and getting data from user
    # def report_wizard_to_aurors
    #   if @choice == "Avada Kedavra"
    #     puts "Umm, yeah, I'm going to have to report you to the Aurors"
    #   else
    #     choose_element index
    #   end
    # end

    # nice thank you for the user that uses Time.now
    def thank_you
      time = Time.now.strftime("%I:%M%p")
      puts "\nThank you, We finished fixing your wand at #{time}. That'll be 100 million Galleons"
    end

end
