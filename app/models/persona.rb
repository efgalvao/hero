class Persona < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
    validates :name, presence: true, allow_blank: false, length: { maximum: 50}, allow_nil: true
    validates :karma, presence: true, allow_blank: false, allow_nil: false
    validates :media, presence: true
    validates :appearance, presence: true

    scope :filter_by_starts_with, -> (name) { where("name like ?", "#{name}%")}

    def self.search(query)
        if query
            @personas = Persona.find_by(name: query)
        else
            @personas = Persona.all
        end
    end


end
