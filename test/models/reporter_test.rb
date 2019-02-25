require 'test_helper'

class ReporterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @Wenwen = reporters(:Wenwen)
  end

  test "reports fields are not empty" do
    reporter = Reporter.new
    assert @Wenwen.valid?
  end

end
