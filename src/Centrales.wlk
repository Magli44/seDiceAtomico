import Ciudades.*

object centralAtomica {
	var varillasDeUranio

	method produccionEnergetica() {
		return 0.1 * varillasDeUranio
	}
	method contaminacion() {
		return varillasDeUranio > 20
	}
	method varillasDeUranio(cantidad){
		varillasDeUranio = cantidad
	}
}

object centralDeCarbon {
	var capacidad
	var riquezaDelSuelo = 0.9

	method produccionEnergetica() {
		return 0.5 + ( capacidad * riquezaDelSuelo )
	}
	method contaminacion() {
		return true
	}
}

object centralEolica {
	var turbinas = [0.2 * 10]
	var velocidadViento = 10
	
	method produccionEnergetica(){
		return turbinas.sum()
	}
	
	method contaminacion(){
		return false
	}
}

