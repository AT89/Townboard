class Board < ActiveRecord::Base
  has_many :posts # NHO: might want to make this relationship dependent: :destroy to prevent orphaned posts
end
