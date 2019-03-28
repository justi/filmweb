class Actor < ApplicationRecord
  has_and_belongs_to_many :movies

  validates_presence_of :name, :surname, :birth_date
  validates :name, uniqueness: { scope: :surname,
                                 message: "should be unique with surname together" }

  def name_with_initial
    "#{name.first}. #{surname}"
  end
end
