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
      step 0
      step 1
      step 2
      step 3
      thank_you
    end

end
