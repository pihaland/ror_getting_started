# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'is invalid with empty title and body' do
    article = Article.new
    expect(article).not_to be_valid
  end

  it "is valid with a title and body of sufficient length" do
    article = Article.new(title: "title", body: "body with more team 10 chars")
    expect(article).to be_valid
  end

  it 'is invalid with research articles having less than 500 characters' do
    article = Article.new(title: "My new research about kitties", body: "body with more team 10 chars")
    expect(article).not_to be_valid
  end
end

