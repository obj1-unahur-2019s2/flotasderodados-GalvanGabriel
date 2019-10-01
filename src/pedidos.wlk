class Pedido {
	var property distancia
	var property tiempoMaximo
	var property cantPasajeros
	var property coloresIncompatibles = #{}
	method velocidadRequerida() { return distancia/tiempoMaximo}
	method autoPuedeSatisfacer(rodado){
		return rodado.velocidadMaxima() >=self.velocidadRequerida() + 10 and rodado.capacidad()>=cantPasajeros and
		(not coloresIncompatibles.contains(rodado.color()))
	}
	method acelerar() {tiempoMaximo = (tiempoMaximo-1).max(1)}
	method relajar() {tiempoMaximo = (tiempoMaximo-1)}
	
}
