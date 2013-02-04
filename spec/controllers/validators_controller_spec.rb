# -*- coding: utf-8 -*-

require 'spec_helper'

describe ValidatorsController do

  def valid_attributes
    { "name" => "W3C Validation", "href" => "http://validator.w3.org/check?uri=%e", content: 'W3C Validation', "priority" => 1 }
  end

  describe "GET index" do
    it "assigns all validators as @validators" do
      validator = Validator.create! valid_attributes
      get :index, {}
      assigns(:validators).should eq([validator])
    end
  end

  describe "GET show" do
    it "assigns the requested validator as @validator" do
      validator = Validator.create! valid_attributes
      get :show, {:id => validator.to_param}
      assigns(:validator).should eq(validator)
    end
  end

  describe "GET new" do
    it "assigns a new validator as @validator" do
      get :new, {}
      assigns(:validator).should be_a_new(Validator)
    end
  end

  describe "GET edit" do
    it "assigns the requested validator as @validator" do
      validator = Validator.create! valid_attributes
      get :edit, {:id => validator.to_param}
      assigns(:validator).should eq(validator)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Validator" do
        expect {
          post :create, {:validator => valid_attributes}
        }.to change(Validator, :count).by(1)
      end

      it "assigns a newly created validator as @validator" do
        post :create, {:validator => valid_attributes}
        assigns(:validator).should be_a(Validator)
        assigns(:validator).should be_persisted
      end

      it "redirects to the created validator" do
        post :create, {:validator => valid_attributes}
        response.should redirect_to(Validator.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved validator as @validator" do
        # Trigger the behavior that occurs when invalid params are submitted
        Validator.any_instance.stub(:save).and_return(false)
        post :create, {:validator => { "name" => "invalid value" }}
        assigns(:validator).should be_a_new(Validator)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Validator.any_instance.stub(:save).and_return(false)
        post :create, {:validator => { "name" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested validator" do
        validator = Validator.create! valid_attributes
        # Assuming there are no other validators in the database, this
        # specifies that the Validator created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Validator.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => validator.to_param, :validator => { "name" => "MyString" }}
      end

      it "assigns the requested validator as @validator" do
        validator = Validator.create! valid_attributes
        put :update, {:id => validator.to_param, :validator => valid_attributes}
        assigns(:validator).should eq(validator)
      end

      it "redirects to the validator" do
        validator = Validator.create! valid_attributes
        put :update, {:id => validator.to_param, :validator => valid_attributes}
        response.should redirect_to(validator)
      end
    end

    describe "with invalid params" do
      it "assigns the validator as @validator" do
        validator = Validator.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Validator.any_instance.stub(:save).and_return(false)
        put :update, {:id => validator.to_param, :validator => { "name" => "invalid value" }}
        assigns(:validator).should eq(validator)
      end

      it "re-renders the 'edit' template" do
        validator = Validator.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Validator.any_instance.stub(:save).and_return(false)
        put :update, {:id => validator.to_param, :validator => { "name" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested validator" do
      validator = Validator.create! valid_attributes
      expect {
        delete :destroy, {:id => validator.to_param}
      }.to change(Validator, :count).by(-1)
    end

    it "redirects to the validators list" do
      validator = Validator.create! valid_attributes
      delete :destroy, {:id => validator.to_param}
      response.should redirect_to(validators_url)
    end
  end

end
