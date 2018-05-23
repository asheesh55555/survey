class SubmittedAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :zip_code
end
