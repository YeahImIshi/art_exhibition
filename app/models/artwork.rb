class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :classification, presence: true, inclusion: { in: ['painting', 'sculpture', 'print', 'decorative art', 'drawing', 'Index of American Design'], case_sensitive: false }
  validates :begin_year, presence: true
  validates :end_year, presence: true
  validates :medium, presence: true
  validates :provenance_text, presence: true
  validates :attribution, presence: true
  validates :credit_line, presence: true
end
