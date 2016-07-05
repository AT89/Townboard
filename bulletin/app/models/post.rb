class Post < ActiveRecord::Base
  belongs_to :board
  has_many :comments, :dependent => :destroy

end
