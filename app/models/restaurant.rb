class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, message: 'Please type your name'
  validates_uniqueness_of :name, message: 'Name must be unique'
  validates_presence_of :address, message: 'Please type your address'
  validates :category, presence: true, inclusion: {in: ['chinese', 'italian', 'japanese', 'french', 'belgian']}
end
