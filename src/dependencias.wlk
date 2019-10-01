class Dependencia {
	
	var flota = []	
	var property cantidadDeEmpleados
	
	
	method agregarAFlota(rodado) { flota.add(rodado) }
	
	method quitarDeFlota(rodado) { flota.remove(rodado) }

	method pesoTotalFlota() { return flota.sum({ vel => vel.peso() }) }

	method estaBienEquipada() { return flota.size() >= 3 and flota.all({ vel => vel.velocidadMaxima() >= 100})}

	method capacidadTotalEnColor(color) { return flota.filter({ vel => vel.color() == color }).sum({ vel => vel.capacidad() })}
	
	method capacidadTotalEnColor_variante(color) { return self.vehiculosDeColor(color).sum({ vel => vel.capacidad() })}
	
	method vehiculosDeColor(color) { return flota.filter({ vel => vel.color() == color })}

	method colorDelRodadoMasRapido() { return flota.max({ vel => vel.velocidadMaxima() }).color()}

	method capacidadFaltante() { return cantidadDeEmpleados - flota.sum ({s=>s.capacidad()})}
	
	method esGrande() { return cantidadDeEmpleados >= 40 and flota.size() >= 5 }
}
