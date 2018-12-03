class PostController < Sinatra::Base

  configure:development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }


  get "/" do
    erb :'posts/index'
  end

  get "/:id" do
    id = params[:id].downcase
    @title = id.capitalize
    case id
      when "england"
        erb :'posts/england'
      when "germany"
        erb :'posts/germany'
      when "mexico"
        erb :'posts/mexico'
      when "china"
        erb :'posts/china'
      when "australia"
        erb :'posts/australia'
      else
        redirect :"https://en.wikipedia.org/wiki/#{id}"
      end
  end
end
