//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method cobra() {
      gimenez.fondo(self.sueldo())
      saldo += self.sueldo()
    }

    method sueldo() {
        return sueldo
    }

    method gastar(cuanto){
        saldo -= cuanto
    }

    method deuda() {
      return -(0.min(saldo))
    }

     method dinero() {
        return 0.max(saldo)
    }

}

object baigorria {
    var empanadasVendidas = 0
    var precioEmpanada = 15
    var totalCobrado = 0


    method vender(_empanadas) {
        empanadasVendidas += _empanadas
    }

    method sueldo(){
        return empanadasVendidas * precioEmpanada
    }

    method cobra() {
      gimenez.fondo(self.sueldo())
      totalCobrado += self.sueldo()
      empanadasVendidas = 0

    }

    method totalCobrado() {
        return totalCobrado
    }

}


object gimenez{
    var fondo = 300000

    method fondo (descontar){
        fondo -= descontar
    }

    method fondo() {
        return fondo
    }
    method pagarSueldo(empleado){
        empleado.cobra()
    }

}



