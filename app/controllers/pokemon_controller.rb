class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id]) 
		pokemon.trainer_id = current_trainer.id
		pokemon.save()

		redirect_to '/'
	end
	def damage
		pokemon = Pokemon.find(params[:id]) 
		# pokemon.trainer_id = current_trainer.id
		pokemon.health = pokemon.health - 10
		pokemon.save()
		if pokemon.health <= 10
			pokemon.delete
		end
		

		redirect_to trainer_path(current_trainer)
	end 
	def new

	end
	def create
		pokemon = Pokemon.new
		pokemon.name = params[:pokemon][:pokemon_name]
		pokemon.health = 100
		pokemon.level = 1
		pokemon.trainer_id = current_trainer.id

		if pokemon.save
			redirect_to trainer_path(current_trainer)
			#simple_form_for pokemon, :url => trainer_path(current_trainer)
		else
			#flash[:error] = "Invalid Pokemon name"
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path(current_trainer)
			#simple_form_for @pokemon, :url => trainer_path
			#simple_form_for pokemon, url: new_pokemon_path(current_trainer), method: :patch do |f|
			#end
		end

	end

end
