require 'spec_helper'

describe "validators/edit" do
  before(:each) do
    @validator = assign(:validator, stub_model(Validator,
      :name => "MyString",
      :format => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit validator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => validators_path(@validator), :method => "post" do
      assert_select "input#validator_name", :name => "validator[name]"
      assert_select "input#validator_format", :name => "validator[format]"
      assert_select "textarea#validator_content", :name => "validator[content]"
    end
  end
end
