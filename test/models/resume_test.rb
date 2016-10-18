require 'test_helper'

class ResumeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "resume don't save without name" do
    resume = Resume.new
    assert_not resume.save, "resume saved without name"
  end
end
