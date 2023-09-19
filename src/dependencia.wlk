import rodados.*

class Dependencia {
	var property cantidadEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return rodados.summ{rodado => rodado.peso()}
	}
	
	method todosSuperanXVelocidad(velocidad){
		return rodados.all{=>.velocidad() >= velocidad}
	}
	
	method estaBienEquipado(){
		return rodados.size() >= 3 && self.todosSuperanXVelocidad(100)
	}
	
	method capacidadTotalEnColor(color){
		return self.rodadosDeUnColor(color).sum(=>.capacidad())
	}
	
	method rodadosDeUnColor(unColor){
		return rodados.filter{=>.color() == unColor}
	}
	
	method colorDelRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido(){
		if(rodado.isEmpty())
			self.error("No se puede calcular el maximo")
		return rodados.max(=>.velosidad())
	}
	
	method capacidadFaltante(){
		return 0.max(cantidadEmpleado - self.capacidadDeLaFlota())
	}
	
	method esGrande(){
		return cantidadEmpleado >= 40 and rodados.size() >=5
	}
}
