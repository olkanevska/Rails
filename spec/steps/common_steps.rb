module Turnip::Steps

  step "I visit the page :path" do |path|
    visit path
    sleep 10
  end

  step "I click the :name button" do |name|
    click_button name
  end

end