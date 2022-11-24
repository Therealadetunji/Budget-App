class Entity < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :group_entities

  def recent_transactions
    entity.order(created_at: DESC).limit(3)
 end
end
