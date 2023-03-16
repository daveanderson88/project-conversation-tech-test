require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  let(:user) { create :user }

  describe 'index' do
    context 'unauthenticated' do
      it 'returns http redirect' do
        get projects_path
        expect(response).to have_http_status(302)
      end
    end

    context 'authenticated' do
      before { login_as user }

      it 'returns http success' do
        get projects_path
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'show' do
    let(:project) { create :project }

    context 'unauthenticated' do
      it 'returns http redirect' do
        get project_path(project)
        expect(response).to have_http_status(302)
      end
    end

    context 'authenticated' do
      before { login_as user }

      it 'returns http success' do
        get project_path(project)
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'update' do
    let(:project) { create :project }

    context 'unauthenticated' do
      it 'returns http redirect' do
        put project_path(project), params: { project: { status: :draft } }
        expect(response).to have_http_status(302)
      end
    end

    context 'authenticated' do
      before { login_as user }

      it 'returns http success' do
        put project_path(project), params: { project: { status: :draft } }
        expect(response).to have_http_status(302)
      end
    end
  end
end
