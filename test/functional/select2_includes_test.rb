require File.expand_path('../../test_helper', __FILE__)
require 'welcome_controller'

class Select2IncludesTest < ActionController::TestCase
  fixtures :projects, :news, :users, :members
  include Redmine::I18n

  def setup
    @controller  = WelcomeController.new
    @request     = ActionController::TestRequest.new
    @response    = ActionController::TestResponse.new
    User.current = nil
  end

  def test_script_included
    get :index
    assert_response :success
    assert_select "script:match('src', ?)", /redmine__select2\/javascripts\/select2\.full\.min\.js/
  end

  def test_stylesheet_included
    get :index
    assert_response :success
    assert_select "link:match('href', ?)", /redmine__select2\/stylesheets\/select2\.min\.css/
  end

  def test_locale_loaded
    Setting.default_language = 'ru'
    get :index
    assert_response :success
    # assert_equal 'x', response.body
    assert_select "script:match('src', ?)", /redmine__select2\/javascripts\/i18n\/ru\.js/
  end

end
