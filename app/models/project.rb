class Project < ActiveRecord::Base
  has_many :lists
  has_many :tasks, through: :lists

  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
end
