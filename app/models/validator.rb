class Validator < ActiveRecord::Base
  attr_accessible :content, :format, :name, :priority, :iframe
  default_scope order('priority ASC')

  after_initialize :initialize_priority

  def initialize_priority
    self.priority ||= Validator.count + 1
  end
end
