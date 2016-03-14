require 'test_helper'

class CparTest < ActiveSupport::TestCase
	test "should not save cpar without form" do
		cpar = Cpar.new
		assert_not Cpar.save
	end

end
