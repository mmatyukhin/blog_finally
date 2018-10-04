require 'rails_helper'

RSpec.describe Admins::UsersController, type: :controller do

    let (:comment) { 'This is test comment for rspec i dont know what to write here, so i will type something' }
    let (:test_user) {create :user }

     describe '#create_new_comment' do
       subject {}

       context 'when user is logged in' do
         it { expect (subject).to eq 'this is shit' }
     end
   end
end
