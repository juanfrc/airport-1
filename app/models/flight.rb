class Flight < ActiveRecord::Base
  belongs_to :airline
  has_one :departue 
  has_one :arrival

  accepts_nested_attributes_for :departue, :arrival

  validates :airline, presence: true
  validates_numericality_of :number, only_integer: true, greater_than: 0
end
