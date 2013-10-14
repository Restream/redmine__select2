require File.expand_path('../../test_helper', __FILE__)
require 'welcome_controller'

class Select2IncludesTest < ActionController::TestCase
  fixtures :projects, :news, :users, :members
  include Redmine::I18n

  def setup
    @controller = WelcomeController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    User.current = nil
  end

  def test_script_included
    get :index
    assert_response :success
    assert_select 'script[src=?]', /.+redmine__select2\/javascripts\/select2\.min\.js.+/
  end

  def test_stylesheet_included
    get :index
    assert_response :success
    assert_select 'link[href=?]', /.+redmine__select2\/stylesheets\/select2\.css.+/
  end

  def test_locale_loaded
    Setting.default_language = 'ru'
    get :index
    assert_response :success
    assert_select 'script[src=?]', /.+redmine__select2\/javascripts\/select2_locale_ru\.js.+/
  end

end
