class App < ActiveRecord::Base
  validates_presence_of :published
  has_many :reviews
  default_scope { where(published: true) }
end
