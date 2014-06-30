require "spec_helper"

feature "Homepage" do
  scenario "should have a page header" do
    visit "/"
    expect(page).to have_content("Fish Homepage")
  end

  scenario "should have a list of fish" do
    visit "/"
    expect(page).to have_content("Shark")
    expect(page).to have_content("Tuna")
  end
  

end
