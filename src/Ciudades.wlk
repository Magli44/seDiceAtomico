import Centrales.*

object springfield {
	var necesidadEnergetica
	var velocidadDelViento = 10
	var riquezaDelSuelo = 0.9
	var centrales = #{centralAtomica, centralDeCarbon, centralEolica}
	
	method cubrioNecesidades(){
	  centrales.sum({central => central.produccionEnergetica()})
	  
	}
	method necesidadEnergetica(cantidad){
		necesidadEnergetica = cantidad 
	}
	method estaAlHorno(){
		return self.todasLasCentralesSonContaminantes() || self.aportanMasDeLoNecesario()
	}
	method todasLasCentralesSonContaminantes(){
		return centrales.all({central => central.contaminacion()})
	}
	method centralesContaminantes(){
		return centrales.filter({central => central.contaminacion()}) 
	}
	method sumaDeProducciones(){
		
	}
	
}