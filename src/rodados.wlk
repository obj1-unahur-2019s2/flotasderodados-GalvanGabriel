
import wollok.game.*
object azul {}
object rojo {}
object verde {}
object blanco {}
object bordo {}
object beige {}
object norte {
	method mover(position){
		position.up(1)
	}
}
object sur {
	method mover(position){
		position.down(1)
	}	
}

object oeste {
	method mover(position){
		position.left(1)
	}
}

object este {
	method mover(position){
		position.right(1)
	}
}




class Corsa {
	var property position = new Position(x=2,y =6) 
	var property color
	var property ultimoMovimiento
	method velocidadMaxima() = 150 
	method peso() = 1300
	method capacidad() = 4
	method moverseHacia(direccion){
		direccion.mover(position)
		ultimoMovimiento = direccion
	}
}

class Kwid {
	var property tieneTanqueAdicional = false
	var property position = new Position(x=2,y =6) 
	var property ultimoMovimiento
	
	method capacidad() { if (not tieneTanqueAdicional) {return 4 } else {return 3}  }
	method velocidadMaxima() { if (not tieneTanqueAdicional) {return 120 } else {return 110}  }
	method peso() { if (not tieneTanqueAdicional) {return  1200 } else {return 1350}  }
	method color() {return "Azul"} 
	method moverseHacia(direccion){
		direccion.mover(position)
		ultimoMovimiento = direccion
	}
}


object trafic{
	var property interior = interiorPopular
	var property motor = motorBataton
	var property position = new Position(x=2,y =6) 
	var property ultimoMovimiento
	
	method velocidad() = motor.velocidad()
	method capacidad() = interior.capacidad()
	method peso() = motor.peso() + interior.peso() + 4000
	method color() = "blanco"
	method moverseHacia(direccion){
		direccion.mover(position)
		ultimoMovimiento = direccion
	}
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

class AutoEspecial {
	var property color  
	var property capacidad
	var property velocidadMaxima
	var property peso
} 	
