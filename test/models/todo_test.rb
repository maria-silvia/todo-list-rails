require "test_helper"

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "item normal" do
    item = todos(:one)
    assert item.save
  end

  test "item normal com status 1" do
    item = todos(:two)
    assert item.save
  end

  test "item sem nome" do
    item = todos(:name_empty)
    assert !item.save
  end
  
  test "item sem status" do
    item = todos(:status_empty)
    assert item.save
    # to do: deveria inferir 0
  end
  
end
