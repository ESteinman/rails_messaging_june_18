Given("I will fill in the following") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I visit the sign up page") do
  visit new_user_registration_path
end

When("I am at the sign up page") do
    if path == 'Sign up'
        expect(page.current_path).to eq registration_path
    end
end

Then("I fill in {string} with {string}") do |field_name, content_name|
  fill_in field_name, with: content_name
end

When("I click {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("my account is created") do
  pending # Write code here that turns the phrase above into concrete actions
end
