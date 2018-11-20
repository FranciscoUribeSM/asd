require 'test_helper'

class UserArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_article_index_url
    assert_response :success
  end

end
