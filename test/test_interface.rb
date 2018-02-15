require './ollivanders/interface'

class TestInterface < Minitest::Test

  def setup
    stored_elements = File.read('./ollivanders/elements.json')
    elements = JSON.parse(stored_elements, {:symbolize_names => true})
    @e = elements.values
  end

  def test_that_specific_element_values_can_be_called
    assert_includes @e[0], "Unicorn"
  end

  def test_that_the_elements_value_array_can_be_printed
    assert_equal @e[0], ["Unicorn", "Dragon", "Pheonix"]
  end

end
