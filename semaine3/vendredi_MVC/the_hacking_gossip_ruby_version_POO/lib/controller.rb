require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new  
  end

  def create_gossip
    params = @view.create_gossip_from_view
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossip = Gossip.all
    all_gossip.each do |author, content|
      @view.liste_all(author, content)
    end
  end

  # def search_destroy
  #   puts "Quelle ligne veux tu supprimer?"
  #   print ">>"
  #   delete_line = gets.chomp.to_i
  #   Gossip.delete(delete_line)
  # end
end