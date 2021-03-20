FactoryBot.define do
  factory :drink do
    name { 'Drink A' }
    image_url { 'https://example.com/image.jpg' }
    description { 'A drink that has a lot of water' }
    rating_avg { 1.0 }
    alcohol_level { 1 }
    ibu { 1 }
    temperature { :hot }
    drinkware { 'Collins Glass' }
    distilled { true }
    origin { 'California' }
  end
end
