# frozen_string_literal: true

# search and display github repositories
class GithubRepositoriesController < ApplicationController
  def index
    @repos = []
  end

  def search
    @repos = fetched_repos
    flash[:error] = nil if @repos.present?
    render :index
  end

  private

  def github_searcher
    @github_searcher ||= GithubSearch::Searcher.new
  end

  def fetched_repos
    search_param.present? ? github_searcher.repos.search(search_param, sort: :stars) : []
  end

  def search_param
    @search_param ||= params.require(:search)
  rescue ActionController::ParameterMissing
    flash[:error] = 'Please enter a repository name.'
    nil
  end
end
