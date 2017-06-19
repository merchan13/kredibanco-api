class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates_inclusion_of :active_user, in: [true, false]
  validates_presence_of :email,
                        :name,
                        :lastname,
                        :phone

  validates_uniqueness_of :email

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
