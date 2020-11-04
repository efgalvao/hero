class Persona < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
    validates :name, presence: true
    validates :karma, presence: true
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
