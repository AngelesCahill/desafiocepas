class Winemaker < ApplicationRecord
    has_many :winemaker_winetasteds
    has_many :winetasteds, through: :winemaker_winetasteds, dependent: :destroy
end
