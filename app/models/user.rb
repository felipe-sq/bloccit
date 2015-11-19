class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  before_save :formatted_name

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, length: { minimum: 1, maximum: 100 },  presence: true
# Added code to validate capitalization of names.
  validates_each :name do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if
    value =~ /\A[[:lower:]]/


    end

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 },
            format: { with: EMAIL_REGEX }

  has_secure_password

  def formatted_name
      self.name = name.split.map {|names| names.capitalize }.join(' ')
  end
end
