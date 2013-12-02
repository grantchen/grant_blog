require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessor :password

  before_save :encrypt_password

  private
  def encrypt_password
    self.encrypted_password = BCrypt::Password.create(password) unless password.blank?
  end
end
