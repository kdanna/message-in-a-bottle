class Main < Sinatra::Base

puts "load works"
	
	@@clicks = 0
	#main beach
	get '/' do
		 erb :index
	end	

	#to the beaches
	get '/beach' do
		puts params["location"]

		@search_params = params["location"]

		if  @search_params == "west"
			@beach =  'It is totally awesome to write messages in your used bottles at the end of a spring break rager!'	
			@@clicks = @@clicks+1
		elsif  @search_params == "east"
			@beach = 'Argh, the Island of Tortuga runs short of turtles.'
			@@clicks = @@clicks+1
		end

		puts @@clicks
		if @@clicks >= 5
			@beach = 'ouch there is a crab in the bottle'
		end
		if @@clicks >= 20
			@beach = 'You search the beach but there are no more bottles'
		end	
			erb :beach

	end

end