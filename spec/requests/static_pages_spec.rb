require 'spec_helper'


def check_staticpage_content(page_name, content)
	it "should have the content '#{content}'" do
		visit '/static_pages/' + page_name
		expect(page).to have_content(content)
	end

	it "should have the right title" do
		visit '/static_pages/' + page_name
		title = "Ruby on Rails Tutorial Sample App | #{content}"
		expect(page).to have_title(title)
	end
end



describe "Static Pages" do
	describe "Home page" do
		check_staticpage_content('home','Home')
	end

	describe "Help page" do
		check_staticpage_content('help','Help')
	end
	
	describe "About Page" do
		check_staticpage_content('about','About Us')
	end
end
