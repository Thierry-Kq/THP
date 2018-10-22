class View
  
  def create_gossip_from_view
    puts "Qui est tu?"
    print ">>"
    author_is = gets.chomp.capitalize
    puts "Quel potin tu veux ajouter??"
    print ">>"
    content_is = gets.chomp.capitalize
    return params = { content: content_is, author: author_is }
  end

  def liste_all(author, content)
    print "#{author}, #{content}"
    puts
  end
end
