# encoding: utf-8

# require 'profile'
require_relative('midia')

class Livro <:: Midia

	 # Attributos
	 attr_reader :categoria, :autor, :titulo

	 # initialize
	 def initialize(titulo, autor, numero_paginas, isbn, valor, categoria)
	 	 super(titulo, valor, categoria)
	 	 @autor  = autor
	 	 @numero_paginas = numero_paginas
	 	 @isbn = isbn
	 end

	 # Reescreve o to_s da classe String (Polimorfismo)
	 def to_s
	 	puts "#{@autor}, #{@numero_paginas}, #{@isbn}, #{@valor}, #{@categoria}"
	 end

	 # Metodo hash
	 def hash
	 	@isbn.hash
	 end

end
