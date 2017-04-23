#encoding: utf-8
require_relative('midia')
# require 'profile'

class CD <:: Midia
      
      # Attributos da classe
      attr_reader :desconto

      # Metodo initialize
      def initialize(titulo, valor, categoria)
      	 super(titulo, valor, categoria)
      	 @desconto = 0.3
      end

end