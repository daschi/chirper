class User < ActiveRecord::Base
  has_many :chirps
  # has_many :stalkers, class_name: "User", foreign_key: "stalker_id", through: :relations
  # has_many :victims, class_name: "User", foreign_key: "victim_id", through: :relations

  has_and_belongs_to_many :stalkers,
    class_name: "User",
    foreign_key: "stalker_id",
    join_table: "relations"

    has_and_belongs_to_many :victims,
    class_name: "User",
    foreign_key: "victim_id",
    join_table: "relations"




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
