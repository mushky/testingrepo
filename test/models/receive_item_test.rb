require 'test_helper'

class ReceiveItemTest < ActiveSupport::TestCase
	test "should not save Receive Item without form" do
		receiveitem = ReceiveItem.new
		assert_not ReceiveItem.save
	end
end
