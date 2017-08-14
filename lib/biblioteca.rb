require_relative('livro')
require_relative('dvd')
require_relative('banco_de_arquivos')
#require 'profile'

# encoding: utf-8
class Biblioteca
     
     include Enumerable

	 # Attributos
	 attr_reader :livros

     # initialize
     # @implementado
	 def initialize
	 	@midias = []
	 	@banco_de_arquivos = BancoDeArquivos.new
	 end

	 # adiciona livro
	 # @implementado
	 def adiciona(midia)
	 	salva(midia)do 
	 	   @midias << midia
	    end if midia?(midia)
	 end

	 # Adiciona Multiplos livros
	 # @bugado
	 def adiciona_multiplos(*args)
	 	args.each{|midia| @midias << midia if midia?(midia) }
	 end
	 
	 # Livros
	 # @implementado
	 def midias
	 	@midias ||= @banco_de_arquivos.carrega
	 end

	 # Livros por Categoria
	 def midia_por_categoria(categoria) 
	 	@midias.select{|midia| midia.categoria.eql? categoria if midia.respond_to? :categoria }
	 end

	 # Verifica equicidade dos livros
	 # @implementado
	 def eql?(outro_livro)
	 	@isbn == outro_livro.isbn
	 end

	 # Metodos protegidos
	 protected
	  def midia?(midia)
	  	 true if midia.kind_of?(Midia)
	  end

	 # Salva Livro
	 private
	   def salva(midia)
	   	 @banco_de_arquivos.salva(midia)
	   	 yield
	   end
end


# Livros
# Instancias
livro1 = Livro.new("Aprendendo com Ruby", "Mauricio Aniche", 247, "197-8794SA", 80.00, :ruby)
livro2 = Livro.new("Aprendendo com Java", "Lucas Caeton", 325, "878-ASO7", 90.00, :desenvolvimento)
livro3 = Livro.new("Aprendendo com Design Patterns", "DesignPatterns", 150, "8475-AOLS", 79.90, :web_design)

p livro1.valor_formatado

# Biblioteca
biblioteca = Biblioteca.new
biblioteca.adiciona(livro1)
biblioteca.adiciona(livro2)
biblioteca.adiciona(livro3)

# Retorna Livros
p biblioteca.livros

