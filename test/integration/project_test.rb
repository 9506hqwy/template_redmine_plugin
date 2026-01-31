# frozen_string_literal: true

require File.expand_path('../../test_helper', __FILE__)

class ProjectIntegrationTest < Redmine::IntegrationTest
  include Redmine::I18n

  fixtures :email_addresses,
           :member_roles,
           :members,
           :projects,
           :roles,
           :users

  def setup
  end

  def teardown
  end

  def test_true
    log_user('jsmith', 'jsmith')

    assert true
  end
end
