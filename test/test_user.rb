require './ollivanders/user'

class TestUser < Minitest::Test
  include User

    def test_user_input_subtracts_1
      input = 5
      assert_equal get_user_input, input
    end

end
