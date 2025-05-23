class App < ApplicationRecord
  has_many :user_apps
  has_many :users, through: :user_apps

  # req fields
  validates :name, :description, :link, :color, presence: true
  validates :link, format: URI.regexp(%w[http https])
end
