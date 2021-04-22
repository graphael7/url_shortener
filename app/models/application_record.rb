class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  require 'uri'
end
