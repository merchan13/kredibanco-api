class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email,
                        :name,
                        :lastname,
                        :phone,
                        :active_user,
                        :credit_score

  validates_uniqueness_of :email

  # Prestamos
  has_many :payments
  has_many :kredis, through: :payments
  # Solicitudes
  has_many :kredi_requests

  def full_name
    return "#{name.split(' ')[0]} #{lastname}".strip if (name || lastname)
    "Anónimo"
  end

  def generate_auth_token
    token = SecureRandom.hex
    self.update_columns(auth_token: token)
    token
  end

  def invalidate_auth_token
    self.update_columns(auth_token: nil)
  end
end
