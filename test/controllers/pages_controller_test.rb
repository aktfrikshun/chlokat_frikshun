require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "home renders the public archive shell" do
    get root_path

    assert_response :success
    assert_select "h1", "Search the Chloe Katastrophe reconstruction."
    assert_select "form.archive-search"
  end
end
