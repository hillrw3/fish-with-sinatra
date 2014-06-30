require "spec_helper"

feature "Homepage" do
  scenario "should have a greeting" do
    visit "/"
    expect(page).to have_content("Fish Homepage")
  end

end
