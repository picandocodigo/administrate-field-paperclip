FactoryGirl.define do
  factory :post do
    image { File.new(File.join('spec', 'fixtures', 'image.png')) }
  end
end
