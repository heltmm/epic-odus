class Chapter < ActiveRecord::Base
  has_many :sections
  has_many :lessons, through: :sections
  validates :title, :order, :presence => true
end
