# AM: Encourage you to look into using Rails validations. They're commonly used to place constraits on data at the model level.
# AM: More info here - http://guides.rubyonrails.org/active_record_validations.html
class Album < ApplicationRecord
  has_many :submissions, dependent: :nullify  # AM: `:nullify` - cool!
  belongs_to :user
end
