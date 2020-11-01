class Persona < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
    validates :name, presence: true
    validates :karma, presence: true
    validates :media, presence: true
    validates :appearance, presence: true
end
