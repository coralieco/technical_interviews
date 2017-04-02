class App < ActiveRecord::Base
  validates_presence_of :published
  has_many :reviews
end
