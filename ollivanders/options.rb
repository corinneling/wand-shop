module Options

    def show_intro key
     # elements.keys takes the keys of the JSON turned hash elements
      puts "\nWhat is the #{key} of your wand?"
    end

    def show_values value_array
      # elements[:core] outputs the value of the core key turned symbol
      value_array.each_with_index do |a_value, index|
         puts "#{index+1}. #{a_value}"
      end
    end

    def step index
      show_intro keys[index]
      choose_element values[index]
    end

end
