object neo {
    var energia = 100 // incial
    const esElegido = true

    method saltar() { energia = energia / 2}

    method energia() {return energia}
    method vitalidad() = energia /10
    method esElElegido() {return esElegido}
}

object morfeo {
    var vitalidad = 8
    var estaDescansado = true
    const esElegido = false

    method saltar() {
        vitalidad = vitalidad - 1
        estaDescansado = !estaDescansado
    }
    method estaDescansado() {return estaDescansado}
    method vitalidad() {return vitalidad}
    method esElElegido() {return esElegido}
}

object  trinity {
    const vitalidad = 0
    const esElegido = false

    method saltar() {}

    method vitalidad() {return vitalidad}
    method esElElegido() {return esElegido}
}

object nave {
    var pasajeros = []

    method pasajeroConMasVitalidad() {return pasajeros.max({p => p.vitalidad()})}
    method cuantosPasajerosHay() {return pasajeros.size()}
    method estEquilibradaLaVitalidad() {
        return pasajeros.all({ p1 => 
        pasajeros.all({ p2 => p1.vitalidad() <= p2.vitalidad() * 2})})}
    method estaElElegido() {return pasajeros.any({p => p.esElElegido()})}

    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.forEach({p => if(!p.esElElegido())p.saltar()})
    }

    method subirPasajero(pasajero) {
        pasajeros.add(pasajero)
    }
    method pasajeros() {return pasajeros}
}
