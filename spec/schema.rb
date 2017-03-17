# make sure we have paperclip here
require 'paperclip'

include Paperclip::Schema
ActiveRecord::Schema.define do
  self.verbose = false

  create_table :posts, force: true do |t|
    t.attachment :image
  end
end
