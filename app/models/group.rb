class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  validates :icon,
            format: { with: /\.(gif|jpg|png|ico|jpeg)\Z/i,
                      message: 'must be a URL for GIF, JPG, PNG, ICO or Jpeg image.' }

  belongs_to :author, class_name: 'User'
  has_many :group_entities, dependent: :destroy
  has_many :entities, through: :group_entities
end
