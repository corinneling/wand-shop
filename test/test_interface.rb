require 'minitest/autorun'
require 'minitest/pride'

require './ollivanders/interface'

class TestInterface < Minitest::Test

  def setup elements
    @elements = elements
  end

  # i want the interface to welcome the customer
  def test_get_wand_method_starts
    interface = Interface.new
    assert_output(/Welcome to Ollivander's Wand Shop\n\n/) { interface.get_wand }
  end

  # then i want it to output options
  def test_array
    array_test = [1, 2, 3]
    assert_equal array_test, [1, 2, 3]
  end

  def test_prompt_for_key_is_outputted
    interface = Interface.new
    assert_output(/What should your wand core be?/) { interface.show_intro }
  end

  # let them select
  # def test_user_can_select_an_option
  #   assert_equal 4, @interface.choose
  # end


end
