# -*- coding: utf-8 -*-
require 'spec_helper'

describe "validators/validte" do
  before(:each) do
    @validator = Validator.new(
      :name => "Name",
      :format => "Format",
      :content => "MyText"
    )
  end

  it "renders" do
    render
  end
end
