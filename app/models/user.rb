class User < ApplicationRecord
  has_many :poems, dependent: :destroy

  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy

  has_many :passive_relationships, class_name:"Relationship", foreign_key: "followed_id", dependent: :destroy

  has_many :following, through: :active_relationships, source: :followed

  has_many :followers, through: :passive_relationships

  def self.from_token_payload(payload)
    return false unless payload['sub']
    find_or_create_by(sub: payload['sub'])
  end
end
