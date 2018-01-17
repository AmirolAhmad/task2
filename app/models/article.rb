class Article < ApplicationRecord
  belongs_to :user

  def owner_name
    "#{self.user.username}"
  end
end
