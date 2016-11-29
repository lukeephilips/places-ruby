require "Capybara/rspec"
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the home path', {:type => :feature}) do
  it "allows the user to add a place to a list of places the user has been" do
    visit ('/')
    fill_in('place', :with => 'Medellin')
    click_button('Go!')
    expect(page).to have_content('The place has been successfully submitted!')
  end
end
