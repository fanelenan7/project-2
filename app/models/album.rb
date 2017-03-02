class Album < ApplicationRecord
  has_many :submissions, dependent: :nullify
  belongs_to :user
end
