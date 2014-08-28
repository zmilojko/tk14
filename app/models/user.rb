class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # db fields: id, email, encrypted_password, reset_password_token, 
  #            reset_password_sent_at" datetime, remember_created_at, sign_in_count,
  #            current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip,
  #            created_at, updated_at 
  # model fields: password, password_confirmation

  has_many :runs, dependent: :restrict_with_exception
  def show_name
    display_name || full_name
  end
end
