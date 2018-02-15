require './ollivanders/options'

class TestOptions < Minitest::Test
  include Options

  # i want the interface to welcome the customer
  def test_intro_method_takes_an_argument
    assert_output(/\nWhat is the test of your wand?/) { show_intro 'test' }
  end

  # then i want it to output options
  def test_elements_method_prints_array_with_index
    array = ["a", "b", "c"]
    assert_output(/1. a\n2. b\n3. c/) { show_elements array }
  end

end
