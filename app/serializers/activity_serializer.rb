class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty
  has_many :signups, dependent: :destroy
  has_many :campers, through: :signups
end
