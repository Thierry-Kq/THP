require 'gossip'


class ApplicationController < Sinatra::Base
    get '/' do
      erb :index, locals: {gossips: Gossip.all}
      end

    get '/gossips/new/' do
      erb :new_gossip
    end

    post '/gossips/new/' do
        Gossip.new(params['gossip_author'], params['gossip_content']).save
        redirect '/'
    end

    get '/gossips/:value' do

      gossip = []
      gossip = Gossip.find(params["value"])
      erb :show, locals: {gossip: gossip}
    end
    
    get '/gossips/edit/:id' do
      erb :edit
    end

    post '/gossips/edit/:id' do
      gossip = Gossip.find(params['id'])
      gossip.update(params['new_author'],params['new_content'],params['id'])
      redirect "/gossips/#{params['id']}"
    end






#     post '/gossips/new/' do
#   puts "Salut, je suis dans le serveur"
#   puts "Ceci est mon super params : #{params}"
#   puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
#   puts "De la bombe, et du coup ça ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
#   puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
# end

end
