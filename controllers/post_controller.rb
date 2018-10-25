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
    id = params[:id]

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
    end
  end
end
