class User < ApplicationRecord
  has_many :poems, dependent: :destroy
end
