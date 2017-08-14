#encoding: utf-8
require 'rubygems'

module FormatadorMoeda
	def valor_formatado
		"R$ #{@valor}"
	end
end