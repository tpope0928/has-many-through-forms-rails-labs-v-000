class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepted_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

end
