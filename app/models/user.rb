class User < ApplicationRecord
  validates_presence_of :full_name, :email, :role
  validates_inclusion_of :role, in: 0..1
  validates_inclusion_of :veteran?, in: [true, false]
  validates_inclusion_of :veteran_family?, in: [true, false]
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_secure_password

  has_many :promis_scores
end
