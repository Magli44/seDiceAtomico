import Centrales.*

object springfield {
	var necesidadEnergetica
	var velocidadDelViento = 10
	var riquezaDelSuelo = 0.9
	var centrales = #{ centralAtomica, centralDeCarbon, centralEolica }
	
	//PUNTO2
	method centralesContaminantes() {
		return centrales.filter({ central => central.contaminacion() })
	}
	//PUNTO3
	method cubrioNecesidades() {
	return necesidadEnergetica < centrales.sum({ central => central.produccionEnergetica() })

	}
	method necesidadEnergetica(cantidad) {
		necesidadEnergetica = cantidad
	}
	//PUNTO4
	method estaAlHorno() {
		return self.todasLasCentralesSonContaminantes() || self.aportanMasdeLoNecesario()
	}
	method todasLasCentralesSonContaminantes() {
		return centrales.all({ central => central.contaminacion()})
	}
	method sumaProducciones(centralesContaminadoras){
		return centralesContaminadoras.sum({central => central.produccionEnergetica()})
	}
	method aportanMasdeLoNecesario(){
		return necesidadEnergetica * 1.5 < self.sumaProducciones(self.centralesContaminantes())
	}
	 method centralMasProductora(){
	 	return centrales.max({central => central.produccionEnergetica()})
	 }
	 method centrales(){
	 	return centrales
	 }
}

object albuquerque{
	var caudal = 150
	var centrales = #{centralHidroelectrica}
	
	method caudal(){
		return caudal
	}
	method centralMasProductora(){
		return centrales.max({central => central.produccionEnergetica()})
	}
}