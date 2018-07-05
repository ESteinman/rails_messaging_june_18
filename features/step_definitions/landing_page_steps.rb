When("I visit the landing page") do
    visit root_path
end

Then("I should see {string} link") do |link_name|
    expect(page).to have_link link_name
end

Then("I should see {string} message") do |application_name|
    expect(page).to have_content application_name
end
