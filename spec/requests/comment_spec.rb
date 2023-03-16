require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  let(:user) { create :user }
  let(:project) { create :project }

  describe 'new' do
    context 'unauthenticated' do
      it 'returns http redirect' do
        get new_project_comment_path(project)
        expect(response).to have_http_status(302)
      end
    end

    context 'authenticated' do
      before { login_as user }

      it 'returns http success' do
        get new_project_comment_path(project)
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'create' do
    let(:project) { create :project }

    context 'unauthenticated' do
      it 'returns http redirect' do
        post project_comments_path(project), params: { comment: { content: 'Test comment' } }
        expect(response).to have_http_status(302)
      end
    end

    context 'authenticated' do
      before { login_as user }

      it 'returns http redirect' do
        post project_comments_path(project), params: { comment: { content: 'Test comment' } }
        expect(response).to have_http_status(302)
      end
    end
  end
end
