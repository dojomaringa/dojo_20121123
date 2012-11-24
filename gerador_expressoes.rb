class GeradorExpressoes

	def self.sei(abre, fecha, expressao)
		resultado = ""

		expressao.split.each_with_index do |word, index|			
			resultado << " " unless index == 0

			if index == abre
				resultado << "("
			end

			resultado << word

			if index == fecha
				resultado << ")"
			end
		end

		resultado
	end

	def self.gerar(expressao)
		expressoes = expressao.split
		return ["(#{expressao})"] if expressoes.size == 1
		
		resultado = []

		expressoes.each_with_index do |word, index|
			if index.even?
				(index + 1).upto(expressoes.size) do |numero|
					resultado << sei(index, numero, expressao) if numero.even?
				end
			end		
		end

		resultado
	end
end