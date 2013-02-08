# -*- coding: utf-8 -*-

require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index', locale: 'en'
      response.should be_success
    end
  end
end
