namespace :export do
  desc "Prints events.all in a seeds.rb way."
  task :seeds_format => :environment do
    Event.order(:id).all.each do |event|
      puts "Event.create(#{event.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
