require "spec_helper"

describe ValidatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/validators").should route_to("validators#index", locale: 'en')
    end

    it "routes to #new" do
      get("/validators/new").should route_to("validators#new", locale: 'en')
    end

    it "routes to #show" do
      get("/validators/1").should route_to("validators#show", id: "1", locale: 'en')
    end

    it "routes to #edit" do
      get("/validators/1/edit").should route_to("validators#edit", id: "1", locale: 'en')
    end

    it "routes to #create" do
      post("/validators").should route_to("validators#create", locale: 'en')
    end

    it "routes to #update" do
      put("/validators/1").should route_to("validators#update", id: "1", locale: 'en')
    end

    it "routes to #destroy" do
      delete("/validators/1").should route_to("validators#destroy", id: "1", locale: 'en')
    end

    it "routes to #validate" do
      get("/validate").should route_to("validators#validate", locale: 'en')
    end
  end
end
