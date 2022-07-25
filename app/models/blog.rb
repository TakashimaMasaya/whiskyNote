class Blog < ApplicationRecord
  has_one_attached :thumbnail

  belongs_to :user
end
