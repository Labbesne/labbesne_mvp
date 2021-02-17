class Info < ApplicationRecord
  belongs_to :profiles, class_name: "Profile"
  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :dob, presence: true
  validates :phone, presence: true, length: {is: 8}, numericality: { only_integer: true }
  validates :gender, presence: :true, inclusion: { in: %w(Male Female),
    message: "%{value} is not a valid gender" }

  def dob_ten
    if dob > Date.today - 10.years
      errors.add(:dob, "Come back when you're older")
    end
  end
end
