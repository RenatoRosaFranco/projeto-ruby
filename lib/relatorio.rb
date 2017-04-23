require_relative('livro')
require_relative('biblioteca')

#enconding: utf-8
class Relatorio

	  def initialize(biblioteca)
	  	 @biblitoeca = biblitoeca
	  end

	  def total
	  	  @biblioteca.livros.map(&:valor).inject(:+)
	  end

	  def titulos
	  	  @biblioteca.livros.map &:titulo
	  end

end