class CalculaImcController < ApplicationController

	def index  
		@result = { "message" => "Bem vindo a cauculadora de IMC."}
		render json: @result
	end

	def imc
		@height = Float(params[:height]) #Altura
		@weight = Float(params[:weight]) #Peso
		@imc = @weight/(@height)**2

		if @imc < 16
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Baixo Peso", 
				"grau" => 1  
			}
		elsif @imc > 16 && @imc < 16.99 
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Baixo Peso", 
				"grau" => 2  
			}
		elsif @imc > 18.50 && @imc < 24.99
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Peso Ideal" 
			}
		elsif @imc > 25 && @imc < 25.99
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Sobrepeso"  
			}
		elsif @imc > 30 && @imc < 34.99
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Obesidade", 
				"grau" => 1  
			}
		elsif @imc > 35 && @imc < 39.99
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Obesidade", 
				"grau" => 2  
			}		
		elsif	@imc > 40
			@result = {
				"imc" => @imc.floor(2), 
				"classification" => "Obesidade Grave", 
				"grau" => 3  
			}
		else	
			@result = { 
				"message" => "Não foi possivel calcular seu IMC"
			}
		end

		render json: @result
	end


end
