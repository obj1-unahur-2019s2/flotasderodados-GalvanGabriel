class Dependencia {
	
	var flota = []	
	var property cantidadDeEmpleados
	var pedidos = []
	
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
	
	method agregarPedido(miPedido){pedidos.add(miPedido)}
	
	method quitarPedido(miPedido){pedidos.remove(miPedido)}
	
	method totalPasajerosEnPedidos(){return pedidos.sum({p=>p.cantPasajeros()})}
	
	method pedidosNoSatisfechos (){
		var list = #{}
		pedidos.forEach{p=>flota.forEach{f=> if(p.autoPuedeSatisfacer(f)){list.add(p)}}}
		return list
	}
	method noPuedenSerSatisfechos(){
		return pedidos.filter({e=> not self.puedeSerSatisfechos(e)})
	}
	method puedeSerSatisfechos(pedido){
		return flota.any({a=> pedido.puedeSerSatisfechos(a)})
		
	}
	method colorIncompatible(color){
		return pedidos.all({f=> f.coloresIncompatibles().contains(color)})
		
	}
	method relajarTodos(){
		pedidos.map{p=>p.relajar()}
		
	}
	method colorIncompatibles(colores){
		return pedidos.map{p=> p.coloresIncompatibles()}
	}
}


