require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Paperclip < Administrate::Field::Base
      def url
        data.url
      end

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
