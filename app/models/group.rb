class Group < ApplicationRecord
  belongs_to :user
  has_many :investments
  validates :name, presense: true
  validates :icon, presense: true
end
