class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_for_bookmarks
  validates :title, uniqueness: true
  validates :title, :overview, presence: true

  private

  def check_for_bookmarks
    return false if bookmarks.count.positive?
  end
end
