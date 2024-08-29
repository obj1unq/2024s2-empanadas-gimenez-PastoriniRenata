//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0


    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method cobra() {
      gimenez.fondo(self.sueldo())
      if (deuda>0) {
        self.disminuirDeuda(self.sueldo())
        }else{
            dinero += self.sueldo()
            }

    }

    method sueldo() {
        return sueldo
    }


    method gastar(cuanto){
        if (dinero<cuanto){
            self.aumentarDeuda(cuanto-dinero)
            dinero = 0
        }else{ 
            dinero -= cuanto
            }

    }

    method disminuirDeuda(monto){
      if (deuda<monto){
            dinero += monto-deuda
            deuda = 0      
        }else{ 
            deuda -= monto
            }
      
    }

    method aumentarDeuda(monto){
      deuda += monto
    }

    method deuda() {
      return deuda
    }
     method dinero() {
      return dinero
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



