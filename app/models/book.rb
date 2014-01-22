class Book < ActiveRecord::Base
  attr_accessible :publisher_id, :title, :year_published
end
