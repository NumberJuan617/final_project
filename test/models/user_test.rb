require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

   def setup
    @user = User.new(teamName: "Example User",
                     password: "foobar", password_confirmation: "foobar")
  end
end	
end