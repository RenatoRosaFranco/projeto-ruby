#encoding: utf-8
require_relative('midia')

class DVD <:: Midia

	  def initialize(titulo, categoria, valor)
	  	  super(titulo, categoria, valor)
	  end

	  def to_s
	  	 ""
	  end

end