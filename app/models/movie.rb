class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :country
  has_and_belongs_to_many :actors
  has_many :ratings

  validates_presence_of :country_id, :director_id, :title, :duration_time
  validates :duration_time, inclusion: { in: 0..999 }
end
