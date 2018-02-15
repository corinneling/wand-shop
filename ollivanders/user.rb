require_relative 'options'
module User
  include Options

    def get_user_input
      gets.chomp.to_i - 1
    end

    def choose_element index
      @choice = show_elements(index)[ get_user_input ]
      puts "You chose #{@choice}"
    end

    def thank_you
      time = Time.now.strftime("%I:%M%p")
      puts "\nThank you, We finished fixing your wand at #{time}. That'll be 100 Galleons"
    end

end
