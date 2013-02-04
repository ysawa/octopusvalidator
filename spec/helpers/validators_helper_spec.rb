# -*- coding: utf-8 -*-

require 'spec_helper'

describe ValidatorsHelper do

  describe '.validator_format_url' do
    it 'makes url form format' do
      format = "http://www.modern.ie/report#%e"
      href = 'http://example.com'
      validator_format_url(format, href).should include 'http://www.modern.ie/report'
      validator_format_url(format, href).should include CGI.escape(href)
    end
  end
end
