require 'livro'
require 'spec_helper'

describe Livro, "Testando a classe livro" do 
       
       # Criando um livro invalido 
       describe "Criando um livro" do 

       	   it "Livro invválido" do 
       	   	  assert_raise(Livro.new).to be(ArgumentError)
       	   end

       	   # Quando o Livro for válido
       	   it "Livro válido" do 
       	   	  livro = Livro.new("Programação com Ruby", "Renato Franco", "654", "548-9798AS", "0.00", :ruby)
       	   	  expect(livro).to instance_of?(Livro)
       	   end

       end

end