require_relative 'user'
require_relative 'constants'

class Interface
  include User

    attr_accessor :elements

    def initialize elements
      @elements = elements
    end

    # we want to run the interface by calling the below methods in order
    def get_customer_info
      # put a loop here to go through all of the keys and all of the elements
      puts WELCOME
      get_questions_n_responses
      thank_you
    end

    def get_questions_n_responses
      elements.each do |keys, values|
        show_question keys
        choose_value keys, values
      end
      @choice
    end

end
