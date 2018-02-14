require_relative 'options'
module User
  include Options

    def get_user_input
      gets.chomp.to_i - 1
    end

    def choose_element n
      @choice = show_elements(n)[ get_user_input ]
      puts "You chose #{@choice}"
    end

    def thank_you
      time = Time.now.strftime("%I:%M%p")
      puts "\nThank you, We just finished fixing your wand at #{time}."
    end

end
