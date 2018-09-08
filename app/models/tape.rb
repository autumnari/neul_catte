class Tape < ApplicationRecord
  belongs_to :user
  belongs_to :m1, class_name: 'Music', foreign_key: 'm1', optional: true
  belongs_to :m2, class_name: 'Music', foreign_key: 'm2', optional: true
  belongs_to :m3, class_name: 'Music', foreign_key: 'm3', optional: true
  (4..10).to_a.each do |i|
    belongs_to "m#{i}".to_sym, class_name: 'Music', foreign_key: "m#{i}", optional: true
  end
  has_many :musics, :as => :fantastic
end
