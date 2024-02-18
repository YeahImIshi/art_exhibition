class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :classification, presence: true
  validates :begin_year, presence: true
  validates :end_year, presence: true
  validates :medium, presence: true
  validates :provenance_text, presence: true
  validates :attribution, presence: true
  validates :credit_line, presence: true
end
