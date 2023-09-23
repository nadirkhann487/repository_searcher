# frozen_string_literal: true

require 'rails_helper'

RSpec.shared_examples 'a successful search' do
  it 'renders the :index template' do
    expect(response).to render_template(:index)
  end

  it 'assigns @repos with fetched repositories' do
    expect(assigns(:repos)).to eq(search_result)
  end
end

RSpec.describe GithubRepositoriesController, type: :controller do
  let(:search_result) do
    [
      double('GithubRepository', full_name: 'Repo_1', html_url: 'https://github.com/repo1'),
      double('GithubRepository', full_name: 'Repo_2', html_url: 'https://github.com/repo2')
    ]
  end

  describe 'GET #search' do
    context 'when search parameter is provided' do
      before do
        allow(controller).to receive(:fetched_repos).and_return(search_result)
        get :search, params: { search: 'test' }
      end

      include_examples 'a successful search'
    end

    context 'when search parameter is not provided' do
      before { get :search }

      it 'sets a flash error message' do
        expect(flash[:error]).to eq('Please enter a repository name.')
      end
    end
  end
end
