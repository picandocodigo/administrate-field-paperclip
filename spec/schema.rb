# make sure we have paperclip here
require 'paperclip'

# rubocop:disable Style/MixinUsage
include Paperclip::Schema
# rubocop:enable Style/MixinUsage

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :posts, force: true do |t|
    t.attachment :image
  end
end
