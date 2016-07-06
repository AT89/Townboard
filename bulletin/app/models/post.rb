class Post < ActiveRecord::Base
  belongs_to :board
  has_many :comments, :dependent => :destroy
  validates :title, presence: true, length: {maximum: 50, minimum: 5}
  validates :author, presence: true
end
