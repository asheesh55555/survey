# ActiveAdmin.register Answer do
#   permit_params :name, :question_id

#   form do |f|
#   f.inputs "Answer" do
#   	f.input :question_id, :label => 'Question', :as => :select, :include_blank => false, :collection => Question.button_types.map{|u| ["#{u.name}", u.id]}
#   	f.input :name 
#   end
#   actions
# end

# end
