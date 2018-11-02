require 'test_helper'

class CreateArticleTest < ActionDispatch::IntegrationTest

    def setup
        @user = User.create(username: "foo", email: "foo@example.com", password: "password", admin: true)
    end

   test "get new article form and create an article" do 
        sign_in_as(@user, "password")
        get new_article_path
        assert_template 'articles/new'
        assert_difference "Article.count", 1 do
            post articles_path, params: {article: {
                title: "Example test", 
                description:  "Example Description", 
                user_id: @user.id
                }}
            follow_redirect!
        end
        assert_template "articles/show"
        assert_match "Example test", response.body
    end

    test "invalid article submission results in failure" do 
        sign_in_as(@user, "password")
        get new_article_path
        assert_template 'articles/new'
        assert_no_difference "Article.count", 1 do
             post articles_path, params: {article: {
                title: " ", 
                description:  " ", 
                user_id: " "
                }}
            assert_template 'articles/new'
            assert_select 'h2.alert-heading'
            assert_select 'div.mb-0'
        end
    end
end