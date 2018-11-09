FactoryBot.define do
  factory :user do
    first_name { "Olena" }
    last_name {"Kanevska"}
    admin { false }

    trait :default do
      initialize_with { User.default || User.new }
    end
  end
end
