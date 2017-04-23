#encoding: utf-8
require_relative('livro')

# require 'profile'
require 'yaml'

class BancoDeArquivos

	 # Salva os livros dentro do arquivo livros.yml
	 # @implementado
	 def salva(livro)
	 	File.open("relatorios/livros.yml", "a") do |arquivo|
	 		arquivo.puts YAML.dump(livro)
	 		arquivo.puts ""
	 	end
	 end

	 # Carrega os livros do arquivo livros.yml 
	 # @implementado
	 def carrega
	 	$/ = "\n\n"
	 	File.open("relatórios/livros.yml", "a").map do 
	 		YAML.load livro_serializado
	 	end
	 end

end

# Instancias
livro = Livro.new("Aprendendo Com Ruby", "Mauricio Aniche", 247, "197-8794SA", 80.00, :ruby)
livro.valor_formatado

banco = BancoDeArquivos.new
banco.salva(livro)