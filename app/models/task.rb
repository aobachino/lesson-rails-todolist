class Task < ApplicationRecord
  belongs_to :user
  belongs_to :status

  validates :name, presence: true
  validates :status, presence: true
end
