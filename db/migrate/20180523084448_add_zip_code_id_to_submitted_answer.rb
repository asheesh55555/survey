class AddZipCodeIdToSubmittedAnswer < ActiveRecord::Migration[5.1]
  def change
  	add_column  :submitted_answers, :zip_code_id, :integer
  end
end
