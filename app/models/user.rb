class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  before_save :formatted_name

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true

  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 },
            format: { with: EMAIL_REGEX }

  has_secure_password

  def formatted_name
    if name
      formatted_array = []
      name.split.map do |names|
        formatted_array << names.capitalize
      end

      self.name = formatted_array.join(" ")
    end
  end
end
