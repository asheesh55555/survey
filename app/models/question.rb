class Question < ApplicationRecord
	has_many :answers, dependent: :destroy
	has_many :submitted_answers
	accepts_nested_attributes_for :answers, :allow_destroy => true

	def self.button_types
    self.where(answer_type: "Button")
	end
end
