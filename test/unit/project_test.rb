# frozen_string_literal: true

require File.expand_path('../../test_helper', __FILE__)

class ProjectTest < ActiveSupport::TestCase
  fixtures :projects

  def test_true
      assert true
  end
end
