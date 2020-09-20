class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :sessions

  def full_address
    [street, city, postcode, country].compact.join ' '
  end

  def super_admin?
    role == 'super_admin'
  end

  def admin?
    role == 'admin'
  end

  def member?
    role == 'member'
  end
end
