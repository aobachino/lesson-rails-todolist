class Task < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :category

  # validates :name, presence: true
  # validates :name, presence: true
  # validates :status, presence: true
  # validates :category, presence: true
end
