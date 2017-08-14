# estudo
# Através deste estudo mostrarei que
# o include procura primeiro o método na classe e depois no módulo
# enquanto o prepend busca primeiro no módulo e depois na classe
module A 

	def sayHello
		puts "Saying Hello from #{self}"
	end

end

class C
    
    include A

    def initialize
    	sayHello
    end

    # Sera buscado primeiro aqui, se não
    # existir um implementação de [:sayHello] na classe C, 
    # será buscado no módulo A
    def sayHello
    	puts "Hello World"
    end

end

class D 

    prepend A

	def initialize
		sayHello
	end

	# Só sera retornado se a implementação do  método
	# [:sayHello] no módulo A não existir
	def hello
		puts "Hello World :)"
	end

end

# Instancias
k1 = C.new
k2 = D.new