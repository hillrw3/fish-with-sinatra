require "spec_helper"

feature "Homepage" do
  before(:each) do
    visit "/"
  end

  scenario "should have a page header" do
    expect(page).to have_content("Fish Homepage")
  end

  scenario "should have a list of fish" do
    expect(page).to have_content("Shark")
    expect(page).to have_content("Tuna")
  end

  scenario "should have links to fish facts" do
    expect(page).to have_link("Shark")
  end

end
