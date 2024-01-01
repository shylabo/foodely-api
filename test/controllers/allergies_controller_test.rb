require "test_helper"

class AllergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allergy = allergies(:one)
  end

  test "should get index" do
    get allergies_url, as: :json
    assert_response :success
  end

  test "should create allergy" do
    assert_difference("Allergy.count") do
      post allergies_url, params: { allergy: { label: @allergy.label, slug: @allergy.slug } }, as: :json
    end

    assert_response :created
  end

  test "should show allergy" do
    get allergy_url(@allergy), as: :json
    assert_response :success
  end

  test "should update allergy" do
    patch allergy_url(@allergy), params: { allergy: { label: @allergy.label, slug: @allergy.slug } }, as: :json
    assert_response :success
  end

  test "should destroy allergy" do
    assert_difference("Allergy.count", -1) do
      delete allergy_url(@allergy), as: :json
    end

    assert_response :no_content
  end
end
