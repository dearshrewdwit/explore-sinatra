require 'spec_helper'

feature "Sinatra Explore App" do
  scenario 'Can submit no name and see nothing' do
    visit('/')
    click_button('Submit')
    expect(page).not_to have_content("Your user_name is")
  end

  scenario 'Can submit name and see it' do
    visit('/')
    fill_in(:user_name, with: "dearshrewdwit")
    click_button('Submit')
    expect(page).to have_content("Your user_name is dearshrewdwit")
  end
end
