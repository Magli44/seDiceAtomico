import Ciudades.*

object centralAtomica {
	var varillasDeUranio = 10

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
	var capacidad = 2
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
	// var velocidadViento = 10 //
	
	method produccionEnergetica(){
		return turbinas.sum()
	}
	
	method contaminacion(){
		return false
	}
}

object centralHidroelectrica{
	
	method produccionEnergetica(){
		return 2 * 150
	}
}
