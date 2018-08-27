class Photo < ApplicationRecord
  validates :wedding, presence: true, length: { minimum: 1 }
end
