require_relative "avaliador_expressao"

describe "Avaliador de Expressao" do
	context "Expressao sem parenteses" do
		it "Expressao 'true' retorna true" do
			AvaliadorExpressao.avaliar("true").should be_true
		end

		it "Expressao 'false' retorna false" do
			AvaliadorExpressao.avaliar("false").should be_false
		end

		it "Expressao 'true and true' retorna true" do
			AvaliadorExpressao.avaliar("true and true").should be_true
		end
	end

	context "Expressao com parenteses" do
		it "Expressao 'true and (true and false)' retorna true" do
			AvaliadorExpressao.avaliar("true and (true and false)").should be_false
		end

		it "Expressao 'false or (true xor false)' retorna true" do
			AvaliadorExpressao.avaliar("true and (true xor false)").should be_true
		end
	end

	context "Contador de Expressoes" do
		it "Contador para expressao 'true' retorna 1" do
			AvaliadorExpressao.contar("true").should == 1
		end

		it "Contador para expressao 'true and false' retorna 0" do
			AvaliadorExpressao.contar("true and false").should == 0
		end

		it "Contador para expressao 'true or false and true and false' retorna 1" do
			AvaliadorExpressao.contar("true or false and true and false").should == 1
		end

		it "Contador para expressao 'true or false or true or false' retorna 6" do
			AvaliadorExpressao.contar("true or false or true or false").should == 6
		end
	end

end