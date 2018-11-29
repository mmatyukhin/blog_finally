require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let(:user) { create :user }
  let!(:article) { create :article, user: user }

  describe '#index' do
    subject { get :index }
    it { is_expected.to render_template :index }
  end
end
