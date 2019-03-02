require 'test_helper'

class ComplaintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @bathroom = complaints(:bathroom)
  end

  #test "complaint fields must not be empty" do
    #complaint = Complaint.new
    #assert @bathroom.valid?
  #end

  test "a_number must be eight digits, now or in the future" do
    assert_equal 8, @bathroom.date.to_s.length
  end


end
