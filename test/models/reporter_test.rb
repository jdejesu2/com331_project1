require 'test_helper'

class ReporterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "reports fields are not empty" do
    reporter = Reporter.new
    assert reporter.valid?
    assert reporter.errors[:first_name].any?
    assert reporter.errors[:last_name].any?
    assert reporter.errors[:a_number].any?
    assert reporter.errors[:school_email].any?
  end

end
