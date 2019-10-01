object azul {}
object rojo {}
object verde {}
object blanco {}
object bordo {}
object beige {}

class Corsa { 
	var property color
	method velocidadMaxima() = 150 
	method peso() = 1300
	method capacidad() = 4
}

class Kwid {
	var property tieneTanqueAdicional = false
	method capacidad() { if (not tieneTanqueAdicional) {return 4 } else {return 3}  }
	method velocidadMaxima() { if (not tieneTanqueAdicional) {return 120 } else {return 110}  }
	method peso() { if (not tieneTanqueAdicional) {return  1200 } else {return 1350}  }
	method color() {return "Azul"} 
}


object trafic {
var property motor
var property interior
	
	method capacidad() { return interior.capacidad() }
	method velocidadMaxima() {return motor.velocidadMaxima()}	
	method peso() {
		return 4000 + motor.peso() + interior.peso()
	}
		method color() { return "blanco" }
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

object motorPulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}

object motorBataton {
	method velocidadMaxima() = 80
	method peso() = 500
}

class AutoEspecial {
	var property color  
	var property capacidad
	var property velocidadMaxima
	var property peso
} 	
