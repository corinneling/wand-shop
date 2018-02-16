require 'colorize'

module Options

    # takes in key index as a parameter and puts that key in the string
    def show_question key
      if key == :spells
        show_spells_intro
      else
     # elements.keys takes the keys of the JSON turned hash elements
      puts "\nWhat is the #{key} of your wand?\n"
      end
    end

    # will be a prompt specific to the spells section
    def show_spells_intro
      puts "\nWhich of these spells did you use before your wand broke?"
    end

    # takes in the index of values, iterates through the array, prints it out with indexes
    def show_values key, value_array
      # elements[:core] outputs the value of the core key turned symbol
      value_array.each_with_index do |a_value, index|
         puts "#{index+1}. #{a_value}"
      end
    end
end
