class List < ActiveRecord::Base
  belongs_to :project
  has_many :tasks

  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
end
