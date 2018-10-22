require 'pry'

class Gossip

attr_reader :content, :author

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV::Row.delete("db/gossip.csv", "r") do |csv|
      csv.each do |ligne|
        gossip_provisoire = ligne
        all_gossips << gossip_provisoire
      end
      binding.pry
      return all_gossips
    end
  end

  # def self.delete(line)

  # end

end