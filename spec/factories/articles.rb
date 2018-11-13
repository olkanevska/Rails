FactoryBot.define do
  factory :article do
    title { "Article title #{rand(1..100)}"  }
    text { "Test text#{rand(1..100)}" }
  end
end