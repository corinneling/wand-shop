require_relative 'user'
require_relative 'constants'

class Interface
  include User

  attr_accessor :values, :keys

  def initialize elements
    @keys = elements.keys
    @values = elements.values
  end

    # we want to run the interface by calling the below methods in order
    def get_customer_info
      # put a loop here to go through all of the keys and all of the elements
      puts WELCOME
      # show_keys
      step 0
      step 1
      step 2
      step 3
      thank_you
    end

    # def show_keys
    #   keys.each do |index|
    #     each_key = keys
    #     puts each_key
    #   end
    # end

  # def show_values
  #   @elements.each do |n|
  #     show_elements
  #   end
  # end


end
