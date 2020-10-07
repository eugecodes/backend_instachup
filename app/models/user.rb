class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :role
  has_many :orders

  after_create :set_token

  def to_s
    email
  end

  private
    
    def set_token
      update_column("token", SecureRandom.hex)
    end

end

