class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :order, :presence => true
end
