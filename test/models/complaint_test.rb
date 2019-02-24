require 'test_helper'

class ComplaintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "complaint fields must not be empty" do
    complaint = Complaint.new
    assert complaint.valid?
    assert complaint.errors[:date].any?
    assert complaint.errors[:location].any?
    assert complaint.errors[:type].any?
    assert complaint.errors[:description].any?
  end

end
