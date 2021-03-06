class Question < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options
  validates :name, presence: true
end
