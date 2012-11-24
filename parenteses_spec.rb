require_relative "gerador_expressoes"

describe "gerador" do
	it "Expressao 'true' retorna ['true']" do
		GeradorExpressoes.gerar("true").should == ["(true)"]
	end	

	it "Expressao 'true and true' retorna ['(true and true)']" do
		GeradorExpressoes.gerar("true and true").should == ["(true and true)"]
	end

	it "Expressao 'true and false and true' retorna ['(true and false and true)', (true and false) and true], 'true and (false and true)'" do 
		GeradorExpressoes.gerar("true and false and true").include? ["(true and false and true)", "(true and false) and true", "true and (false and true)"]
	end

end