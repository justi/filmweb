class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :country
  has_and_belongs_to_many :actors
  validates_presence_of :country, :director
end
