require 'test_helper'

class VolunteerProjectsControllerTest < ActionController::TestCase
  setup do
    @volunteer_project = volunteer_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteer_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer_project" do
    assert_difference('VolunteerProject.count') do
      post :create, volunteer_project: { description: @volunteer_project.description, link: @volunteer_project.link, name: @volunteer_project.name }
    end

    assert_redirected_to volunteer_project_path(assigns(:volunteer_project))
  end

  test "should show volunteer_project" do
    get :show, id: @volunteer_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer_project
    assert_response :success
  end

  test "should update volunteer_project" do
    patch :update, id: @volunteer_project, volunteer_project: { description: @volunteer_project.description, link: @volunteer_project.link, name: @volunteer_project.name }
    assert_redirected_to volunteer_project_path(assigns(:volunteer_project))
  end

  test "should destroy volunteer_project" do
    assert_difference('VolunteerProject.count', -1) do
      delete :destroy, id: @volunteer_project
    end

    assert_redirected_to volunteer_projects_path
  end
end
