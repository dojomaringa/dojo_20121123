require_relative "gerador_expressoes"

class AvaliadorExpressao
	def self.avaliar(expressao)
		expressao = expressao.gsub("xor", "^")
		eval expressao
	end

	def self.contar(expressao)
		expressoes = GeradorExpressoes.gerar(expressao)

		resultado = 0

		expressoes.each do |e|
			resultado = resultado + 1 if avaliar(e)
		end

		resultado
	end
end