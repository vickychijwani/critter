class Critter < Sinatra::Application
  get '/stats' do
    haml :stats
  end

  get '/ajax/tag_cloud' do
    type = params[:type]
    limit = params[:limit].to_i
    limit = 10 if limit == 0
    if type == 'mention'
      model = Mention
    elsif type == 'hashtag'
      model = Hashtag
    end
    return model.all(:order => [:count.desc], :limit => limit, :user => user).to_json(:only => [:text, :count])
  end
end
