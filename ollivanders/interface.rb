require_relative 'user'
require_relative 'constants'

class Interface
  include User

  attr_accessor :elements, :key

  def initialize elements
    @elements = elements.values
    @key = elements.keys
  end

    # we want to run the interface by calling the below methods in order
    def get_customer_info
      puts WELCOME
      show_intro key[0]
      choose_element elements[0]
      show_intro key[1]
      choose_element elements[1]
      show_intro key[2]
      choose_element elements[2]
      show_intro key[3]
      choose_element elements[3]
      thank_you
    end

end
