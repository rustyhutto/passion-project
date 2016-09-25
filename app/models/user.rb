require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :checklists
  has_many :sightings, through: :checklists

  validates :username, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :password_hash, :email, :username, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user.password == password
      return @user
    else
      return nil
    end
  end
end
