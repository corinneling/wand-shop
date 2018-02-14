module Options

    def show_intro n
     # elements.keys takes the keys of the JSON turned hash elements
      puts "\nWhat is the #{n} of your wand?"
    end

    def show_elements n
      # elements[:core] outputs the value of the core key turned symbol
      n.each_with_index do |e, index|
         puts "#{index+1}. #{e}"
      end
    end

end
