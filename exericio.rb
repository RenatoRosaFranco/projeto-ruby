# encoding: utf-8
require 'date'
require 'ruby-prof'

GC.disable

RubyProf.start

Date.parse %"2017-04-25	"
result = RubyProf.stop

output = RubyProf::FlatPrinter.new(result)
