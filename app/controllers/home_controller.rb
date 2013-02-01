# -*- coding: utf-8 -*-

class HomeController < ApplicationController
  before_filter :reset_session_values, only: %w(index)

  def index
  end
end
