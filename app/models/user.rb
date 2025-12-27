class User < ApplicationRecord
  has_many :patients, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :name, presence: true
  validates :specialty, presence: true
end
