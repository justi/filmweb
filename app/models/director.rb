class Director < ApplicationRecord
  has_many :movies

  validates_presence_of :name, :surname
  validates :name, uniqueness: { scope: :surname,
                                 message: "should be unique with surname together" }

  def name_with_initial
    "#{name.first}. #{surname}"
  end
end
