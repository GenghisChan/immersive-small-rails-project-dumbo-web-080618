class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => "User"

  def add_self?
    if friend_id == user_id
      errors.add(:friend_id, "can not add yourself")
    end
  end
end
