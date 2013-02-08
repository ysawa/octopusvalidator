# -*- coding: utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  before_filter :set_locale_from_url

protected

  def accepted_languages
    # no language accepted
    return [] if request.env["HTTP_ACCEPT_LANGUAGE"].nil?

    # parse Accept-Language and get accepted locales
    accepted = request.env["HTTP_ACCEPT_LANGUAGE"].split(",")
    accepted = accepted.map { |l| l.strip.split(";") }
    accepted = accepted.map { |l|
      if (l.size == 2)
        # quality present
        [l[0].split("-")[0].downcase, l[1].sub(/^q=/, "").to_f]
      else
        # no quality specified => quality == 1
        [l[0].split("-")[0].downcase, 1.0]
      end
    }

    # sort locales by quality
    accepted.sort { |l1, l2| l2[1] <=> l1[1] }
  end

  def reset_session_values
    session[:validator_ids] ||= []
    if session[:auto].nil?
      session[:auto] = true
    end
  end

  def select_locale_from_accepted_languages
    locales = accepted_languages
    selected = locales.find { |locale| OctopusValidator::LOCALES.include? locale[0].to_sym }
    if selected
      selected[0]
    else
      nil
    end
  end

  def set_locale
    locale = nil
    if params[:locale]
      locale = params[:locale]
    else
      locale = select_locale_from_accepted_languages
      if locale
        redirect_to locale: locale
      end
    end
    locale ||= I18n.default_locale
    locale = locale.to_s.sub(/_.*$/, '')
    I18n.locale = locale
  end
end
