class Client < ApplicationRecord
  validates :first_name, :last_name, :middle_name, presence: true
  validates :client_number, presence: true, uniqueness: true
  has_many :bank_accounts

  before_save :client_upcase

  def client_upcase
    self.first_name   = first_name.upcase
    self.last_name    = last_name.upcase
    self.middle_name  = middle_name.upcase
  end

  def to_s
    "#{last_name}, #{first_name} #{middle_name}"
  end
end
