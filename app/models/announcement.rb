class Announcement < ApplicationRecord
  belongs_to :user
  has_many :reads
  validates :announcement, presence: true, length: { maximum: 140}
  validates :expiration , presence: true
  validates :user, presence: true
end
