# frozen_string_literal: true

require File.expand_path('../../test_helper', __FILE__)

class ProjectControllerTest < Redmine::ControllerTest
  include Redmine::I18n

  fixtures :email_addresses,
           :member_roles,
           :members,
           :projects,
           :roles,
           :users

  def setup
    @request.session[:user_id] = 1
  end

  def test_true
    assert true
  end
end
