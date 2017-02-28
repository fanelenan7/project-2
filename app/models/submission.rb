class Submission < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :album, optional: true
end
