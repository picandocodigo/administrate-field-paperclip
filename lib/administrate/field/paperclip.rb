require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Paperclip < Administrate::Field::Base
      class Engine < ::Rails::Engine
      end

      def style(size = big_style)
        data.try(:url, size) || ''
      end

      delegate :url, to: :data

      def thumbnail
        style(thumbnail_style)
      end

      alias url style

      private

      DEFAULT_THUMBNAIL_STYLE = :thumbnail
      DEFAULT_BIG_STYLE = :original

      def thumbnail_style
        options.fetch(:thumbnail_style, DEFAULT_THUMBNAIL_STYLE)
      end

      def big_style
        options.fetch(:big_style, DEFAULT_BIG_STYLE)
      end
    end
  end
end
