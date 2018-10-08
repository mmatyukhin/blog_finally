require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
    let(:user)     { create :user }
    let!(:article) { create :article, user: user }

    before { sign_in user }

     describe '#create' do
       let(:params) do
         {
           article_id: article.id,
           comment: {
             body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'
           }
         }
       end

       subject { post :create, params: params }

       it { expect { subject }.to change { user.comments.count }.by(1)  }
     end
end
