require File.expand_path('../../test_helper', __FILE__)
require 'welcome_controller'

class Select2IncludesTest < ActionController::TestCase
  fixtures :projects, :news, :users, :members

  def setup
    @controller = WelcomeController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    User.current = nil
  end

  def test_index
    get :index
    assert_response :success
    assert_select 'script[src=?]', /.+redmine_select2\/javascripts\/select2\.min\.js.+/
    assert_select 'link[href=?]', /.+redmine_select2\/stylesheets\/select2\.css.+/
  end

end
