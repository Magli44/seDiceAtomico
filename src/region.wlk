import Ciudades.*

object region{
	var ciudades = #{albuquerque, springfield}
	
	method centralesMasProductoras(){
		return ciudades.map({ciudad => ciudad.centralMasProductora()})
	}
}