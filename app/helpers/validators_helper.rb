# -*- coding: utf-8 -*-

module ValidatorsHelper

  def validator_format_url(format, href)
    result = format
    result = result.gsub('%e', CGI.escape(href))
    result = result.gsub('%u', href)
    result
  end
end
