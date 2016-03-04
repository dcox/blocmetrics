class RegisteredApplication < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :url, presence: true, format: { with: %r{@^(https?|ftp)://[^\s/$.?#].[^\s]*$@iS},
                                            message: "Please enter a valid URL."}
end
