require 'spec_helper'

describe Validator do
  before :each do
    @validator = Validator.new
  end

  it 'should be new' do
    @validator.should_not be_persisted
  end
end
