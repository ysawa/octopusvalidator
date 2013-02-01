require 'spec_helper'

describe "validators/show" do
  before(:each) do
    @validator = assign(:validator, stub_model(Validator,
      :name => "Name",
      :format => "Format",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Format/)
    rendered.should match(/MyText/)
  end
end
