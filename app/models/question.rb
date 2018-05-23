class Question < ApplicationRecord
	has_many :answers
	has_many :submitted_answers
end
