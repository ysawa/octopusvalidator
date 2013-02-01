require 'spec_helper'

describe "validators/index" do
  before(:each) do
    assign(:validators, [
      stub_model(Validator,
        :name => "Name",
        :format => "Format",
        :content => "MyText"
      ),
      stub_model(Validator,
        :name => "Name",
        :format => "Format",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of validators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
  end
end
