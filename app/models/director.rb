class Director < ApplicationRecord
  validates_presence_of :name, :surname
  validates :name, uniqueness: { scope: :surname,
                                 message: "should be unique with surname together" }
end
