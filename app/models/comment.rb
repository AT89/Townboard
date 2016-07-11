class Comment < ActiveRecord::Base
  belongs_to :post
  # NHO: consider adding validations to comments
end
