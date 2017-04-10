class Book < ApplicationRecord
  def self.create_from_api(response)
    book = Book.new(title: response.title, subtitle: response.titles_array[1], isbn_13: response.isbn, description: response.description, page_count: response.page_count)
    book.save
    # once carrierwave is in place, call remote_avatar_url (background job)
  end

  def self.build_from_api(response)
    book = Book.new(title: response.title, subtitle: response.titles_array[1], isbn_13: response.isbn, description: response.description, page_count: response.page_count)
    book
  end
end
