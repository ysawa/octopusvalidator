require 'spec_helper'

describe "home/index.html.haml" do
  before :each do
    @validator = Fabricate(:validator)
  end

  it 'renders successfully' do
    render
  end
end
