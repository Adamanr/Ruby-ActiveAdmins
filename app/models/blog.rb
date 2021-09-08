class Blog < ApplicationRecord
  belongs_to :user
  has_many :replies, dependent: :destroy
end
