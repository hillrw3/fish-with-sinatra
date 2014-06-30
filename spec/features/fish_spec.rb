require "spec_helper"

feature "Fish Page" do
  scenario "should have a page header" do
    visit "/"
    click_on "Shark"
    # save_and_open_page
    expect(page).to have_content("Fish Details")
    expect(page).to have_content("Shark")
    expect(page).to have_content("Large predator with big teeth")
  end

  scenario "Link to wikipedia from fish name" do
    visit "/fish/0"
    expect(page).to have_link("Shark")
  end

  scenario "Return to homepage" do
    visit "/fish/0"
    click_on "Back to homepage"
    expect(page).to have_content("Fish Homepage")
  end

end
