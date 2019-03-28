class Rating < ApplicationRecord
  belongs_to :movie

  validates_presence_of :movie_id, :nick, :value, :comment
  validates :value, inclusion: { in: 1..10 }
end
