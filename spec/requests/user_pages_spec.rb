require 'spec_helper'
require 'byebug'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end

      describe "after submission" do
        before { click_button submit }

        it { should have_title('Sign up') }
        it { should have_error_message }
      end
    end

    describe "with valid information" do
      before { valid_registration_input }

      describe "after saving the user" do
        before { click_button submit }
        user = User.find_by(email: 'user@example.com')
        #byebug
        #by some weird reason I cannot get the user after signup, causing a undefined method call on 'name'
        it { should have_link('Sign out') }
        it { should have_title("Example User") }
        it { should have_success_message('Welcome') }
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end




    end
  end
end