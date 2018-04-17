class Item < ApplicationRecord
  belongs_to :list, dependent: :destroy

  validates :description, length: { minimum: 5 }, presence: true
end
