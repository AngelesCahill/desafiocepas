class Winetasted < ApplicationRecord
    has_many :winemaker_winetasteds
    has_many :winemakers, through: :winemaker_winetasteds, dependent: :destroy
    def to_s
        name
    end

end
