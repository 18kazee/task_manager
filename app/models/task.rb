class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  enum status: { pending: 0, in_progress: 1, done: 2 }

  broadcasts_to ->(task) { :tasks }
end
