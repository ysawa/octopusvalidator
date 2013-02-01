class Validator < ActiveRecord::Base
  attr_accessible :content, :format, :name
end
