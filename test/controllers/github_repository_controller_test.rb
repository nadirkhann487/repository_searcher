require "test_helper"

class GithubRepositoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get github_repository_show_url
    assert_response :success
  end
end
