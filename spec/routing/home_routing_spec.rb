# -*- coding: utf-8 -*-

require "spec_helper"

describe HomeController do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("home#index", locale: 'en')
    end
  end
end
