require 'test_helper'

class ShipItemTest < ActiveSupport::TestCase
  def setup
    @shipitem = ShipItem.new(part: "Part5690", date: "5555555", quantity: 1, description: "This is a good part", completed: false, shipping_number: "555555555555")
  end

  test "ship item should be valid" do
  	@shipitem.valid?
  end

  test "part number should be present" do
    @shipitem.part = " "
    assert_not @shipitem.valid? 
  end

  test "date should be present" do 
  	@shipitem.date = " "
  	assert_not @shipitem.valid?
  end
end
