require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? return true for draft blog post" do
    assert blog_posts(:draft).draft?
  end

  test "draft? return false for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "scheduled? return true for scheduled blog post" do
    assert blog_posts(:scheduled).scheduled?
  end
end
