class Message < ApplicationRecord
	validates :title, presence: true, length: { maximum: 30 }
	validates :body, presence: true
	validates :number, presence: true, numericality: { only_integer: true }
	validates :body, presence: true, length: { minimum: 20 }
end
