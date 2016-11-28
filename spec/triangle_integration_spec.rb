
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

describe('triangle path', {:type => :feature}) do
  it('tells user if their triangle is an isosceles') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '5')
    click_button('Do it!')
    expect(page).to have_content("It's an isosceles!")
  end
end

describe('triangle path', {:type => :feature}) do
  it('tells user if their triangle is a scalene') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '5')
    click_button('Do it!')
    expect(page).to have_content("It's a scalene!")
  end
end

describe('triangle path', {:type => :feature}) do
  it('tells user if their triangle is not a triangle') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '10')
    click_button('Do it!')
    expect(page).to have_content("It's not a triangle!")
  end
end
