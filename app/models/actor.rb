class Actor < ApplicationRecord
  validates_presence_of :name, :surname, :birthDate
  validates :name, uniqueness: { scope: :surname,
                                 message: "should be unique with surname together" }
end
