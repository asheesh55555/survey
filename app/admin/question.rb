ActiveAdmin.register Question do
  permit_params :name, :answer_type, answers_attributes: [:id, :name, :_destroy]

# form do |f|
#   f.inputs "Question" do
#   	f.input :name 
#     f.input :answer_type, :as => :select, :collection => ["Input field","Button"], :include_blank => false, label: "This question's answer will submitted using"
#   end
#   actions
# end


 form do |f|
  f.inputs "Question" do
  	f.input :name 
    f.input :answer_type, :as => :select, :collection => ["Input field","Button"], :include_blank => false, label: "This question's answer will submitted using"
  end

   f.inputs "Answers" do
      f.has_many :answers, heading: false, allow_destroy: true do |cd|
        cd.input :name
      
      end
    end

  actions
end


end
