class Actor < ApplicationRecord
  validates_presence_of :name, :surname, :birthDate
end
