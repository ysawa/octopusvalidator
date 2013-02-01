# -*- coding: utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery

protected

  def reset_session_validator_ids
    session[:validator_ids] ||= []
  end
end
