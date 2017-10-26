class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true

	validates :name, presence: { message: "Pokemon name can't be blank" }, uniqueness: { message: "Name must be unique" }
end
