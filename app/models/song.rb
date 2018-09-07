class Song < ApplicationRecord
  belongs_to :category
  scope :by_order, -> {order created_at: :desc}
  scope :select_song, -> {
    select :id, :avatar, :name
  }
  mount_uploader :avatar, PictureUploader
  validates :name, presence: true, length: {maximum: Settings.length_name}
  validates :data, presence: true, length: {maximum: Settings.length_name}
  validates :category_id, length: {maximum: Settings.length_name}
end
