# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "email validation should trigger" do
    assert_not User.new(first_name: 'First Name', last_name: 'Last Name').save
  end

  test "user should save" do
    assert User.new(first_name: 'First Name', last_name: 'Last Name', email: 'name@example.org').save
  end
end
