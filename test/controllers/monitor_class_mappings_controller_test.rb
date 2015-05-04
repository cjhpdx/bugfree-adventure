require 'test_helper'

class MonitorClassMappingsControllerTest < ActionController::TestCase
  setup do
    @monitor_class_mapping = monitor_class_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitor_class_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitor_class_mapping" do
    assert_difference('MonitorClassMapping.count') do
      post :create, monitor_class_mapping: { class_name: @monitor_class_mapping.class_name, sub_string: @monitor_class_mapping.sub_string }
    end

    assert_redirected_to monitor_class_mapping_path(assigns(:monitor_class_mapping))
  end

  test "should show monitor_class_mapping" do
    get :show, id: @monitor_class_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitor_class_mapping
    assert_response :success
  end

  test "should update monitor_class_mapping" do
    patch :update, id: @monitor_class_mapping, monitor_class_mapping: { class_name: @monitor_class_mapping.class_name, sub_string: @monitor_class_mapping.sub_string }
    assert_redirected_to monitor_class_mapping_path(assigns(:monitor_class_mapping))
  end

  test "should destroy monitor_class_mapping" do
    assert_difference('MonitorClassMapping.count', -1) do
      delete :destroy, id: @monitor_class_mapping
    end

    assert_redirected_to monitor_class_mappings_path
  end
end
