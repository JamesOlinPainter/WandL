class Lesson < ApplicationRecord
  has_many :problems, dependent: :destroy
  validates :instructor_id, presence: true
  validates :subject, presence: true, length:{ minimum: 3 }
end
