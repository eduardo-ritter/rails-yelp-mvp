class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # dependent destroy -> When a restaurant is destroyed,
  # all of its reviews must be destroyed as well.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion:
    { in: %w[chinese italian japanese french belgian],
      message: 'is not a valid category' }
end
