class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
  

    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise RangeError, 'Número no permitido! vuelva a intentar' if (numero_de_cuenta.split('').count != 8)
    
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        '#{@vip}-#{@numero_de_cuenta}'
    end
end
cuenta = CuentaBancaria.new('Ron Perez','12345678', 1)
puts cuenta.numero_de_cuenta