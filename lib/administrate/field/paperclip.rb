require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Paperclip < Administrate::Field::Base
      delegate :url, to: :data

      def thumbnail
        data.url(:thumbnail)
      end

      def to_s
        data
      end
      class Engine < ::Rails::Engine
      end
    end
  end
end
