class Announcement < ApplicationRecord
  belongs_to :user
  validates :announcement, presence: true, length: { maximum: 140}
  validates :expiration, presence: true
end
