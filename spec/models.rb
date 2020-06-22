class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Post < ApplicationRecord
  include Paperclip::Glue

  has_attached_file :image,
                    styles: {
                      thumbnail: '4x4#',
                      extra: '2x4>'
                    }

  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  do_not_validate_attachment_file_type :image
end
