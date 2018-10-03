require 'test_helper'

class MedicalServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_service = medical_services(:one)
  end

  test "should get index" do
    get medical_services_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_service_url
    assert_response :success
  end

  test "should create medical_service" do
    assert_difference('MedicalService.count') do
      post medical_services_url, params: { medical_service: { description: @medical_service.description, pet_name: @medical_service.pet_name, pet_type: @medical_service.pet_type, size: @medical_service.size } }
    end

    assert_redirected_to medical_service_url(MedicalService.last)
  end

  test "should show medical_service" do
    get medical_service_url(@medical_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_service_url(@medical_service)
    assert_response :success
  end

  test "should update medical_service" do
    patch medical_service_url(@medical_service), params: { medical_service: { description: @medical_service.description, pet_name: @medical_service.pet_name, pet_type: @medical_service.pet_type, size: @medical_service.size } }
    assert_redirected_to medical_service_url(@medical_service)
  end

  test "should destroy medical_service" do
    assert_difference('MedicalService.count', -1) do
      delete medical_service_url(@medical_service)
    end

    assert_redirected_to medical_services_url
  end
end
