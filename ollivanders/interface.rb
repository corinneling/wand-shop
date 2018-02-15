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
      # put a loop here to go through all of the keys and all of the elements
      puts WELCOME
      step 0
      step 1
      step 2
      step 3
      thank_you
    end
  #
  #   def show_keys
  #     @key.each do |n|
  #       show_intro n
  #       show_values
  #     end
  #
  #   end
  #
  # def show_values
  #   @elements.each do |n|
  #     show_elements n
  #   end
  # end


end
