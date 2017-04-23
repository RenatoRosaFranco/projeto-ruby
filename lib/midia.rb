require_relative('helpers/formatador_moeda')

#encoding: utf-8
class Midia

	  include FormatadorMoeda
      
      attr_reader :valor
	  alias :valor :valor_formatado

	  def initialize(titulo, valor, categoria)
	   	 @titulo = titulo
	   	 @valor = valor
	   	 @categoria = categoria
	   	 @desconto = 0.1
	  end

	  def to_s
	  	 puts "#{@titulo}, #{@categoria}, #{@valor}"
	  end
	  
      private
	   def valor_com_desconto
	   	 @valor - (@valor * @desconto)
	   end

end