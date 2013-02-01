# -*- coding: utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery

protected

  def reset_session_values
    session[:validator_ids] ||= []
    if session[:auto].nil?
      session[:auto] = false
    end
  end
end
