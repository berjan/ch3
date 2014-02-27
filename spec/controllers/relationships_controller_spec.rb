require 'spec_helper'
require 'byebug'

describe RelationshipsController do

  let(:user) { FactoryGirl.create(:user) }
  let(:other_user) { FactoryGirl.create(:user) }

  #todo make a stub of current_user. This object will not work in feature/integation specs
  #check issue on stackoverflow: http://stackoverflow.com/questions/19281875/rspec-returning-undefined-local-variable-or-method-signin-path
  #before { sign_in user }
  #
  #describe "creating a relationship with Ajax" do
  #
  #  it "should increment the Relationship count" do
  #    expect do
  #      sign_in user
  #      xhr :post, :create, relationship: { followed_id: other_user.id }, format: 'json'
  #      byebug
  #    end.to change(Relationship, :count).by(1)
  #  end
  #
  #  it "should respond with success" do
  #    xhr :post, :create, relationship: { followed_id: other_user.id }
  #    expect(response).to be_success
  #  end
  #end
  #
  #describe "destroying a relationship with Ajax" do
  #
  #  before { user.follow!(other_user) }
  #  let(:relationship) do
  #    user.relationships.find_by(followed_id: other_user.id)
  #  end
  #
  #  it "should decrement the Relationship count" do
  #    expect do
  #      xhr :delete, :destroy, id: relationship.id
  #    end.to change(Relationship, :count).by(-1)
  #  end
  #
  #  it "should respond with success" do
  #    xhr :delete, :destroy, id: relationship.id
  #    expect(response).to be_success
  #  end
  #end
end