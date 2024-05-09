require 'test_helper'

class ShortenedUrlsControllerTest < ActionDispatch::IntegrationTest
  # test should get show page
  test "should get show" do
    get shortened_url_url(shortened_urls(:one))
    assert_response :success
  end
end
