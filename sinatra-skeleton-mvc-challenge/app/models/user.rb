class User < ActiveRecord::Base
  has_many :chirps

  validates :password, presence: true
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

# user = User.find(1)
# user.chirps
# => shows all of user 1's chirps
