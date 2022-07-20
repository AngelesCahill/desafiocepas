class WinemakerWinetasted < ApplicationRecord
  belongs_to :winemaker
  belongs_to :winetasted
  def to_s
    name
  end
end