class Location < ApplicationRecord
	belongs_to :user

	validates :address1, presence: true
	validates :address2, presence: true
end
