# -*- coding: utf-8 -*-
require 'spec_helper'

describe "validators/validate" do
  before(:each) do
    @validator = Fabricate(:validator)
    view
  end

  context 'without any params' do
    before :each do
      assign(:href, nil)
    end

    it "renders" do
      render
    end
  end


  context 'with params' do
    before :each do
      assign(:href, 'http://example.com' )
    end

    it "renders" do
      render
      rendered.should have_content 'http://example.com'
    end
  end
end
