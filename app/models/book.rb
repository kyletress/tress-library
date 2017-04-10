class Book < ApplicationRecord
  mount_uploader :cover, CoverUploader
  def self.create_from_api(response)
    book = Book.new(title: response.title, subtitle: response.titles_array[1], isbn_13: response.isbn, description: response.description, page_count: response.page_count)
    book.save
  end

  def self.build_from_api(response)
    book = Book.new(title: response.title, subtitle: response.titles_array[1], isbn_13: response.isbn, description: response.description, page_count: response.page_count, remote_cover_url: response.image_link(zoom: 3))
    book
  end
end
