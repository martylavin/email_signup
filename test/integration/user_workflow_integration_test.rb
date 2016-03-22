require 'test_helper'

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest

=begin
   test "the truth anyone can use zombie info"  do

    #visit root_url
    ##assert has_content?('Example Domain'), "Listing Example Domain  root url content"
    user = users(:one)
    visit users_path
      #save_and_open_page
      within("h1") do 
        assert has_content?("Listing Users"), "Listing users should be at the top of page"
      end
      visit edit_user_path(user)
      #assert find_link('mart_test_index'), " link mart_test_index did not find "
      #click_link "mart_test", "click link mat_test did nt work"
      #fill_in "Login name", with: "fartinmartin123"
      #fill_in "First name", with: "marty_boy123456"
      #fill_in "Last name", with: "Lavin123456"
      click_on('Update User')
       assert has_content?("User was successfully updated"), "should have updated user"

      #save_and_open_page
       #assert_equal edit_user_path(user), current_path
    #visit user_url(user)
    visit user_path(user)
    #save_and_open_page
     assert_equal user_path(user), current_path
        #save_and_open_page
    
      assert find_link('Hello'), " link Hello "
     within("h1") do 
      assert has_content?("Obama"), "Obama is not the problem"
      #assert has_content?("Obama"), :js => true "Obama is not the problem"
    end
   end

=end

     test "should create and check paths" do
     visit root_url
     user = users(:one)
     visit user_path(user)
     #click_link('New User')
     #click_link('id_of_link') # click link by id
     #assert find_link("Edit"), "cannot find edit link at root_url" 
     #assert find_link("New User"), "new user link vis" 
     #click_link "New User"
     #assert_equal new_user_path, current_path
     #assert find_link("Back"), "cannot find back link" 
     #click_link "Back"
     assert_equal user_path(user), current_path
     #assert find_link("New User"), "new user link vis" 
     #edit_user_path(@user) 
   end

      #test 'lets the user post a comment', :js => true do
     test "should check paths for links say mart" do
     visit root_path  
     #visit users_path
      screenshot_and_open_image
      #within("h4") do 
      #assert has_content?("Obama"), "Obama is not the problem"
      
      assert has_content?("Legion Post 854 Email List"), "should have Legion Post 854 Email List on root page"
     #assert_select "h1", "Legion Post 854 Email List"
     #assert has_content?('Legion Post 854 Email List'), "should be email list for post854"
     #within("h1") do 
     #assert has_content?("Legion Post 854 Email List"), "should be email list for post854 within h1"
     #end
      #assert find_link("Edit", match: :first).click, "could not find first edit link"
      #assert has_content?("Editing User"), "should have editing user on edit page"

     user = users(:one)
     #get user_path(user)
      visit user_path(user)
     #visit user_url(user)
      assert_equal user_path(user), current_path
      #assert find_link('Edit'), " cannot find link edit "
     #assert find_link("Edit"), "cannot find edit link at root_url" 
     #assert find_link("New User"), "new user link vis" 
     #click_link "Edit"
     #save_and_open_page
     
     #screenshot_and_save_page
     #screenshot_and_open_image

   end


=begin
   test "should check javascript button change paragraphs" do

     visit root_path
      within("h4") do 
      assert has_content?("Obama"), "Obama is not the problem"
      end
      #save_and_open_page
      assert find_link("Edit", match: :first), "could not find first edit link"
      assert find_button("Try it"), "cannot find edit link at root_url" 
      #click_button "#button_one" 
       #assert has_content?("Obama"), "Obama is not the problem"
      assert has_content?(15), "Should be the number 15."
       assert has_content?("JavaScript can change HTML content."), "javscr change html content did not work"
       click_button "Click Me!" 
      assert has_content?("Hello JavaScript marty!"), "Hello JavaScript marty!  content did not work"
      #assert find_link('Edit'), " cannot find link edit "
     #assert find_link("Edit"), "cannot find edit link at root_url" 
     assert find_link("New User"), "new user link visit for index page not found" 
     click_link "New User"
     assert has_content?("New User"), "Obama is not the problem"
     assert_equal new_user_path, current_path
     #assert find_link("Edit", match: :first), "could not find first edit link"
     #find(".active", match: :first).click
     #assert find_link("New User"), "new user link visit for index page not found" 
     #click_link "Edit"
     #save_and_open_page
   end

=end


=begin
    test "should check edit show and delete on root path/index" do
     visit root_path
      within("h4") do 
      assert has_content?("Obama"), "Obama is not the problem"
      end

      assert find_link("Edit", match: :first).click, "could not find first edit link"
      assert has_content?("Editing User"), "should have editing user on edit page"
      fill_in "First name", with: "Fatty Arbuckle"
      fill_in "Last name", with: "stupid half last name"
      #save_and_open_page
      #assert find_button("Update User", match: :first).click, "could not find update user button"
      assert find_button("Update User"), "could not find update user button"
      click_button "Update User"
      assert has_content?("User was successfully updated"), "should have updated user"
      click_link "Back"
      within("h1") do 
        assert has_content?("Listing Users"), "Listing users should be at the top of page"
      end
      #expect(find_field("First name").value).to eq("Fatty Arbuckle"), "first name not fatty arbuckle"
      #expect(find_field("Username").value).to eq("Joe")
      assert has_content?("Fatty Arbuckle"), "should have editing user on edit page"
       #assert find_link('Show'), " wwww "
        assert find_link("Show", match: :first).click, "could not find first show link"
        within '#first_name' do
          assert has_content?('Fatty Arbuckle'), "show page should have Fatty Arbuckle  first name"
        end
        #find(:css, '#first_name').'Fatty Arbuckle'
        assert has_css?('#first_name', text: 'Fatty Arbuckle')
        assert has_selector?("#first_name", text: 'Fatty Arbuckle'), "donf fuck wo  #first_name was not found"
        assert find_link('Back'), "did not find link Back"
        click_link "Back", "click link Back did nt work"
        foo = 100
        foo.must_equal 100
        assert_equal users_path, current_path
        users_path.must_equal current_path
        #has_selector? '#first_name p', text: 'Fatty Arbuckle2222'
      #expect(page).to have_field("First name", with: "Fatty Arbuckle"), "Check to see the First Name field is filled in correctly"
      #fill_in "First name", with: "marty_boy"
     #find(".active", match: :first).click
     #assert find_link("New User"), "new user link visit for index page not found" 
     #click_link "Edit"

     visit root_path

     #assert_equal root_path, current_path
     click_link "New User"
     #assert_equal new_user_path, current_path
    
     within("h1") do 
       assert has_content?("New User"), "New User should be at the top of page"
     end
     
      fill_in "Login name", with: "fartinmartin123"
      fill_in "First name", with: "marty_boy123456"
      fill_in "Last name", with: "Lavin123456"
      select '2012', :from => "user_birthday_1i" 
      select 'September', :from => "user_birthday_2i" 
      select '19', :from => "user_birthday_3i" 
      #select '2011/June/10', :from => 'Birthday'   "user_birthday_2i" 
    
       click_on('Create User')
      assert has_content?("User was successfully created."), "should have created user"
         click_on('Back')
     save_and_open_page
   end

=end


    test "should get root_path minitest syntax" do
      get root_path
      assert_response :success
      assert_select "h1", "Legion Post 854 Email List"
      #assert_select "h4", "Obama"
     end

   
     describe "Test minitest spec in integration test capybara" do
        it "shows capybara spec varient " do
        #visit root_path
        #click_link "New User"
        user = users(:one)
        user.must_be :valid?
        #assert has_content?("New User"), "New User should be at the top of page"
        #page.should have_content('New User')
        #user.must_have_content('New User')
          #user.wont_be :valid?, "messag about not valid "
        foo = 100
        foo.must_equal 100
        #assert has_content?("Obama"), "Obama is not the problem"ß
        mart_test = 5
        assert_equal mart_test, 5
        #must_include "Obama33333333"
        end
      end
    


   #expect(page).to have_field("Username", with: "Joe")
   #find(".active", match: :first)
   #all(".active").each(&:click)

end