require 'minitest/autorun'
require 'minitest/pride'

require './ollivanders/start.rb'

class TestStart < Minitest::Test

  def setup
    stored_elements = File.read('./ollivanders/elements.json')
    @elements = JSON.parse(stored_elements, {:symbolize_names => true})
  end

  def test_parsed_JSON_turns_keys_into_symbols
    assert_includes @elements, :core
  end

  def test_methods_respond_to_instance_of_interface_class
    interface = Interface.new(@elements)
    assert_respond_to interface, :get_customer_info
  end

end
