class Bookmark < ApplicationRecord
  validates :list, uniqueness: { scope: :movie }
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id}
  belongs_to :movie
  belongs_to :list
end
