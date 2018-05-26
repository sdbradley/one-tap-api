class User < ApplicationRecord
  include SoftDeletable

  scope :admins, -> { with_role_of(Role::ADMIN) }
  scope :with_role_of, -> (role_name) { joins(:roles).where(roles: {name: role_name})}
  scope :first_name_like, -> (first_name) { where("users.first_name like ?", "%#{first_name}%") }
  scope :last_name_like, -> (last_name) { where("users.last_name like ?", "%#{last_name}%") }
  scope :email_like, -> (email) { where("users.email_address like ?", "%#{email}%") }

  scope :search, -> (fields) {
    query = self
    query = query.with_role_of(fields[:role]) if fields[:role].present?
    query = query.first_name_like(fields[:first_name]) if fields[:first_name].present?
    query = query.last_name_like(fields[:last_name]) if fields[:last_name].present?
    query = query.email_like(fields[:email_address]) if fields[:email_address].present?
    query
  }

  has_secure_password
  
  validates_presence_of :first_name, :last_name, :email_address
  validates_uniqueness_of :email_address
  validates_length_of :password, minimum: 6, if: :password_digest_changed?
  validates_format_of :password, with: /[A-Z]/, message: "must include a capital letter", if: :password_digest_changed?
  validates_format_of :password, with: /[a-z]/, message: "must include a lowercase letter", if: :password_digest_changed?

  has_many :user_roles
  has_many :roles, through: :user_roles
  belongs_to :account, foreign_key: "account_id"

  before_create(:generate_reset_token)

  def to_h
    {
      id: id,
      first_name: first_name,
      last_name: last_name,
      email_address: email_address,
      user_name: user_name,
      phone: phone,
      account_id: account && account.id,
      account: account,
      roles: roles.map(&:to_h),
      receive_texts: receive_texts,
      is_approved: is_approved,
      is_deleted: is_deleted
    }
  end

  def self.get(id)
    User.find(id)
  end

  def generate_reset_token
    self.reset_token = SecureRandom.urlsafe_base64(32)
  end

  def validate!(token)
    if is_valid_token?(token)
      self.reset_token = nil
      self.is_validated = true
      save
    else
      false
    end
  end

  def is_valid_token?(token)
    token == reset_token
  end

  def set_new_password!(password)
    self.password = password
    save context: :set_password
  end

  def is_admin?
    roles.include?(Role.find_by(name: Role::ADMIN))
  end

  def self.create_user(params)
    params = params.merge({password: SecureRandom.base64, is_approved: 1, is_deleted: 0})
    user = User.create!(params)
    ServiceResponse.new(status: :success, status_code: 200, body: {user: user.to_h})
  end

  def self.update_user(id, params)
    user = User.find(id)
    params = params.presence || {}
    if user.update(params)
      ServiceResponse.new(status: :success, status_code: 200, body: {user: user.to_h})
    elsif user.errors
      ServiceResponse.new(status: :error, status_code: 422, body: {errors: user.errors})
    end
  rescue ActiveRecord::RecordNotFound
    ServiceResponse.new(status: :error, status_code: 404)
  end

  def self.delete_user(id)
    User.find(id).destroy
    ServiceResponse.new(status: :success, status_code: 204)
  rescue ActiveRecord::RecordNotFound
    ServiceResponse.new(status: :error, status_code: 404)
  end

end
