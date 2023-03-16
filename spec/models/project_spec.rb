require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { create :project }

  it 'has a valid factory' do
    expect(project).to be_valid
  end
end
