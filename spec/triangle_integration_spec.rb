
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangle path', {:type => :feature}) do
  it('tells user if their triangle is an equilateral') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '3')
    click_button('Do it!')
    expect(page).to have_content("It's an equilateral!")
  end
end
