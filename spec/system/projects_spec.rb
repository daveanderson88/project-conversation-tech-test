# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :system do
  let(:user) { create :user }
  let!(:project) { create :project }

  before { login_as user }

  context 'index' do
    it 'displays clickable project names' do
      visit root_path

      click_on(project.name)
      expect(current_path).to eq project_path(project)
    end
  end

  context 'show' do
    before { visit project_path(project) }
    it 'displays project details' do
      expect(page).to have_content(project.name)
      expect(page).to have_content(project.description)
    end

    context 'comments' do
      it 'allows creation of comments and shows validation errors' do
        click_on('Post')
        expect(page).to have_content("Content can't be blank")

        fill_in('comment_content', with: 'An example comment')
        click_on('Post')

        within '#project-comments' do
          expect(page).to have_content('An example comment')
          expect(page).to have_content(user.name)
          expect(page).to have_content('less than a minute ago')
        end
      end
    end
  end
end
