require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get choix" do
    get accueil_choix_url
    assert_response :success
  end

  test "should get commander" do
    get accueil_commander_url
    assert_response :success
  end

  test "should get payer" do
    get accueil_payer_url
    assert_response :success
  end

end
