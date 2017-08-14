#encoding: utf-8
require 'FileUtils'
require 'yaml'

require_relative("helpers/active_file")
require_relative('document_not_found')


class Revista 

	  attr_reader :titulo, :id, :destroyed, :new_record
	  attr_accessor :valor

	  include ActiveFile

	  def initialize(titulo, valor)
	  	  @titulo = titulo
	  	  @valor = valor
	  	  @id = self.class.next_id
	  	  @destroyed = false
	  	  @new_record = true
	  end

end

supernatural = Revista.new("SuperNatural", 10.9)
supernatural.save

Revista::find(1)