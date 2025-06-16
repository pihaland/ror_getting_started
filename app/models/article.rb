class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  validates :body, length: { minimum: 500 },  if: :is_research?

  def is_research?
    %w[research thesis].map { |term| title.to_s.downcase.include?(term) }.any?
  end
end
