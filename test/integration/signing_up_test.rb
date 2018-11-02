require 'test_helper'

class SigningUpTest < ActionDispatch::IntegrationTest

    test "Signing up a user" do 
        get signup_path
        assert_template 'users/new'
        assert_difference 'User.count', 1 do
            post users_path, params: { user: { 
                    username: "foo", 
                    email: "foo@example.com", 
                    password: "123456" 
            } }
            follow_redirect!
        end
        assert_template 'users/show'
        assert_select 'div.alert'
        assert_match "Welcome to foo's page", response.body
    end

    test "Invalid sing up submition " do
        get signup_path
        assert_template 'users/new'
        assert_no_difference 'User.count' do 
            post users_path, params: { user: {
                    username: " ",
                    email: " " ,
                    password: " ",                                
            } }
        end
        assert_template 'users/new'
        assert_select 'h2.alert-heading'
        assert_select 'div.mb-0'
    end
end