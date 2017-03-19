require 'spec_helper'

RSpec.describe Administrate::Field::Paperclip do
  let(:post) { create(:post) }
  let(:page) { :show }
  let(:field) { described_class.new(:image, post.image, page) }
  let(:empty_field) { described_class.new(:image, nil, page) }

  require 'administrate/field/paperclip'

  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      expect(empty_field.to_partial_path).to eq("/fields/paperclip/#{page}")
    end
  end

  PAPECLIP_FIELD_METHODS = %w(style thumbnail url).freeze
  PAPECLIP_FIELD_METHODS.each do |method|
    describe "##{method}" do
      context 'when inner_attribute is not set' do
        it 'should return a non-nil url' do
          expect(field.send(method)).to_not eq ''
        end
      end

      context 'when image attachment doesn\'t exist' do
        it 'should return empty string' do
          expect(empty_field.send(method)).to eq ''
        end
      end
    end
  end

  describe '#thumbnail' do
    context 'when thumbnail size is provided as an option' do
      let(:field) { described_class.new(:image, post.image, page, thumbnail_style: :extra) }

      it 'should return a string to the correct image' do
        expect(field.thumbnail).to_not be_nil
        expect(field.thumbnail).to include('extra')
      end
    end
  end

  describe '#style' do
    context 'when big image style is provided as an option' do
      let(:field) { described_class.new(:image, post.image, page, big_style: :extra) }

      it 'should return a string to the correct image' do
        expect(field.style).to_not be_nil
        expect(field.style).to include('extra')
      end
    end

    context 'when  image style is provided as a parameter' do
      let(:field) { described_class.new(:image, post.image, page) }

      it 'should return a string to the correct image' do
        expect(field.style(:extra)).to_not be_nil
        expect(field.style(:extra)).to include('extra')
      end
    end
  end
  
  describe '#url_only?' do
    context 'with no options' do
      it 'should be false' do
        expect(field.url_only?).to be false
      end
    end
    context 'with url_only option true' do
      let(:field) { described_class.new(:image, post.image, page, url_only: true) }
      it 'should be true' do
        expect(field.url_only?).to be true
      end
    end
  end
  
end
