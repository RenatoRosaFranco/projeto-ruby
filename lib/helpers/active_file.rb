module ActiveFile

	# Salva Registro
	# @implementado
	def save
		@new_record = true
		File.open("db/revistas/#{@id}.yml", "w") do 
			file.puts serialize
		end
	end # save

	# Remove Registro
	# @implementado
	def destroy
		unless @destroyed || @new_record
			@destroyed = true
			FileUtils.rm "db/revistas/#{@id}.yml"
		end 
	end # destroy

	# Módulo ClassMethods
	module ClassMethods

		# Metodo para buscar
		# @implemented
		def find(id)
			raise DocumentNotFound,
			"Arquivo db/revistas/#{id}.yml não encontrado", caller
			unless File.exists?("db/revistas/#{id}.yml")
			YAML.load File.open("db/revistas/#{id}.yml", "r")
		end # find

		# Pega o proximo id 
		# @implemented
		def next_id 
		  Dir.glob("db/revistas/*yml").size + 1
		end # next

		 # Adiciona os campos
		 # @implemetado
		 def field(name)
		 	@fields ||= []
		 	@fields << name
		 	self.send(:attr_accessor, name)
		 end

	 end
    
    #  Extende o método atual
    def self.included(base)
    	base.extend ClassMethods
    end
    
    # Métodos privados
    private
     # Serializa
     # @implementado
     def serialize
     	YAML.dump self	
     end
end

end