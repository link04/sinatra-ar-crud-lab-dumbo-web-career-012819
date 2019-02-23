
require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base
use Rack::MethodOverride

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  def article_id
<<<<<<< HEAD
     Article.find(params[:id])
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.create(params)
    redirect "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    @article = article_id
    erb :show
  end

  get '/articles/:id/edit' do
    @article = article_id
    erb :edit
  end

  patch '/articles/:id' do

    @article = Article.find(params[:id])
    @article.update(title: params[:title], content: params[:content] )
    redirect "/articles/#{@article.id}"
  end

  delete '/articles/:id' do
    Article.delete(article_id.id)
    redirect "/articles"
  end

=======
     @article = Article.find(params[:id])
  end
  
  get '/index' do
    @articles = Article.all
    erb :index
  end
  
  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do 
    
    binding.pry
    @article = Article.create(params)
    redirect "/articles/#{@articles.id}"
  end
  
  get '/articles/:id' do 
    @article = article_id
    erb :show
  end
  
  get '/articles/:id/edit' do 
    article_id
    erb :edit
  end
  
  patch '/articles/:id' do
    article_id
    @article.update(params[:id]).save
    redirect "/articles/#{@article.id}"
  end
  
  patch '/articles/:id' do
    article_id
    @article.update(params[:id]).save
    redirect "/articles/#{@article.id}"
  end
  
  delete '/articles/:id' do 
    article_id.delete
    redirect "/index"
  end
  
>>>>>>> 0f06e356f0d918e26d5c4b2f94964345c09e8a82
end
