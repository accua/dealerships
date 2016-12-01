require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the add dealership page path", {:type => :feature}) do
  it("takes the user to the add dealership page.") do
    visit('/')
    click_on("Add a dealership to the Find Yo' Ride Family")
    expect(page).to have_content("Add a dealership to the Find 'Yo Ride Family")
  end
end

describe("the add dealership path", {:type => :feature}) do
  it("takes the users input an adds it to the list of dealerships") do
    visit('/dealership/new')
    fill_in('dealership_name', :with => "Bobby")
    click_on('Submit')
    expect(page).to have_content("Welcome to The Family")
    visit('/')
    expect(page).to have_content("Bobby")
  end
end

  describe("the home path from dealership/id page", {:type => :feature}) do
    it("takes the user back to the root page") do
      visit("/dealership/1")
      click_on("home")
      expect(page).to have_content("Welcome to Find Yo' Ride")
    end
  end

  describe("the dealership path from the / page") do
    it("take the user from the index page to the dealership associated with the link", {:type => :feature}) do
      visit('/dealership/new')
      fill_in('dealership_name', :with => "Doowop Sha Bop")
      click_on('Submit')
      visit('/')
      click_on("Doowop Sha Bop")
      expect(page).to have_content("Here are all the cars at Doowop Sha Bop")
  end
end
