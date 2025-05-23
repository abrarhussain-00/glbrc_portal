class UserApp < ApplicationRecord
  belongs_to :user
  belongs_to :app
  validates :position, presence: true
end
