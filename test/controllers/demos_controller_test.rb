# require 'test_helper'

# describe DemosController

#   setup do
#     @demo = FactoryGirl.build(:demo)
#   end

#   test "should get index" do
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:demos)
#   end

#   test "should get new" do
#     get :new
#     assert_response :success
#   end

#   test "should create demo" do
#     assert_difference('Demo.count') do
#       post :create, demo: { client_id: @demo.client_id, contractor_id: @demo.contractor_id, facilitator_id: @demo.facilitator_id, venue_id: @demo.venue_id }
#     end

#     assert_redirected_to demo_path(assigns(:demo))
#   end

#   test "should show demo" do
#     get :show, id: @demo
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit, id: @demo
#     assert_response :success
#   end

#   test "should update demo" do
#     patch :update, id: @demo, demo: { client_id: @demo.client_id, contractor_id: @demo.contractor_id, facilitator_id: @demo.facilitator_id, venue_id: @demo.venue_id }
#     assert_redirected_to demo_path(assigns(:demo))
#   end

#   test "should destroy demo" do
#     assert_difference('Demo.count', -1) do
#       delete :destroy, id: @demo
#     end

#     assert_redirected_to demos_path
#   end
# end
