require "administrate/field/paperclip"

describe Administrate::Field::Paperclip do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = Administrate::Field::Paperclip.new(:paperclip, '/a.jpg', page)

      path = field.to_partial_path

      expect(path).to eq("/fields/paperclip/#{page}")
    end
  end
end
