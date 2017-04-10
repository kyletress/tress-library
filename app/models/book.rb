class Book < ApplicationRecord
  def self.create_from_api(response)
    book = Book.new(title: response.title,
             description: response.description,
             cover: response.image_link)
    book.save
    # once carrierwave is in place, call remote_avatar_url (background job)
  end
end
