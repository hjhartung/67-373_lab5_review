class Book < ActiveRecord::Base
  attr_accessible :publisher_id, :title, :year_published, :author_ids

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, :through => :book_authors

  validates_presence_of :title
  validates_numericality_of :year_published, :integer_only => true

  scope :alphabetical, order('title')
  scope :last_decade, where('year_published > ?', 2004)
end
