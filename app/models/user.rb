class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_apps
  has_many :apps, through: :user_apps

  after_create :assign_default_apps

  def assign_default_apps
    App.where(default_status: true).each_with_index do |app, index|
      self.user_apps.create(app: app, position: index)
    end
  end
end
