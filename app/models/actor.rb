class Actor < ApplicationRecord
  validates_presence_of :name, :surname, :birth_date
  validates :name, uniqueness: { scope: :surname,
                                 message: "should be unique with surname together" }
  has_and_belongs_to_many :movies

  def name_with_initial
    "#{name.first}. #{surname}"
  end
end
