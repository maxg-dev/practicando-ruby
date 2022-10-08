class DemoStrings
    attr_accessor :word

    def initialize(word = "Hola Mundo!")
        @word = word
    end

    def revertirString
        @word.reverse
    end

    def revertirStringThinking
        drow = String.new
        for index in 0..@word.length-1 do
            drow = drow << @word[@word.length - 1 - index]
        end
        return drow
    end

    def checkPalindromo
        if @word.empty?
            return "Palabra vacía."
        end
        if @word.eql? revertirStringThinking
            return "La palabra #{@word}, es un palindromo."
        end
        return "La palabra #{@word}, no es un palindromo."
    end
end

if __FILE__ == $0
    # puts DemoStrings.new("Hola Inframundo!").revertirString
    # puts DemoStrings.new("reconocer").revertirStringThinking
    puts "Ingrese palabra a verificar:".chomp
    palabra = gets.chomp
    puts DemoStrings.new(palabra).checkPalindromo
end
