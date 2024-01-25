require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.build(:book) }
  it "can be instanciaed" do
    expect(book).not_to be nil
  end

  it "can be saved" do
    expect(book.save).to be true
  end

  it "is invalid without title " do
    book.title = nil
    expect(book.valid?).to be false
    expect(book.errors.messages).to have_key(:title)
  end

  it "is invalid without author" do
    book.author = nil
    expect(book.valid?).to be false
    expect(book.errors.messages).to have_key(:author)
  end

  it "is invalid with a negative pages count" do
    book.page_count = -1
    expect(book.valid?).to be false
    expect(book.errors.messages).to have_key(:page_count)
  end

  it "is invalid with a 0 pages count" do
    book.page_count = 0
    expect(book.valid?).to be false
    expect(book.errors.messages).to have_key(:page_count)
  end
end
