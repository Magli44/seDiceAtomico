import Ciudades.*

//PUNTO5//
object region{
	var ciudades = #{albuquerque, springfield}
	
	method centralesMasProductoras(){
		return ciudades.map({ciudad => ciudad.centralMasProductora()})
	}
}