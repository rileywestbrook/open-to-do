class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates_presence_of :name, on: [:create, :update]

  scope :publicly_viewable,  -> { where(private: false) }
  scope :privately_viewable, -> { where(private: true) }

  scope :visible_to, -> (user) { user ? all : publicly_viewable }
end
