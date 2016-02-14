class List < ActiveRecord::Base
  belongs_to :project
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
end
