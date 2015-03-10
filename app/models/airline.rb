class Airline < ActiveRecord::Base
	has_many :flights, dependent: :destroy
	validates :name, presence: true, length: { minimum: 3 }
end
