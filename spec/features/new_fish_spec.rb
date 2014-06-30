require "spec_helper"

feature "New Fish Page" do

  scenario "Validating link from homepage" do
    visit "/"
    click_on "Create a new fish"
    expect(page).to have_content("Create a new fish")
  end

  scenario "Submit should return to root" do
    visit "/newfish"
    fill_in "name", with: "Shrimp"
    fill_in "watertype", with: "Salt"
    fill_in "description", with: "Tiny delicious crustacean"
    fill_in "imageurl", with: "http://blogs.kcrw.com/goodfood/wp-content/uploads/2013/06/shrimp2.jpg"
    click_on "Submit"
    expect(page).to have_content("Tiny delicious crustacean")
  end

end
