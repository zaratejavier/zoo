class Animal < ApplicationRecord
  belongs_to :zoo
  has_many :comments
end
