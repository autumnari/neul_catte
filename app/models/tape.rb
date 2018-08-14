class Tape < ApplicationRecord
  belongs_to :user
  has_many :musics, :as => :fantastic
end
