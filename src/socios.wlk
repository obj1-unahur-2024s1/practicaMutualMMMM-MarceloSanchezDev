import viajes.*

class Socio {
	const edad
	const actividadesRealizadas = []
	const actividadesMax
	const idiomas
	const property tipoSocio
	
	method agregasActividad(act) {
		if (actividadesRealizadas.size() < actividadesMax) {
			actividadesRealizadas.add(act)
		}
		else {
			throw 'Este es un error'
		}
	}

	method actividadesRealizadas() {
		return actividadesRealizadas
	}

	method adoradorDelSol() {
		return actividadesRealizadas.all({ act => act.sirveParaBroncearse() })
	}

	method actEsforzadas() {
		return actividadesRealizadas.filter({ act => act.implicaEsfuerzo()})
	}
	method atreLaActividadAlSocio(act){
		if(tipoSocio == "socio tranquilo"){
			return act.cuantosDiasDeActividad() >= 4
		}
		else if(tipoSocio == "socio coherente"){
			return if(self.adoradorDelSol()) act.sirveParaBroncearse() else act.implicaEsfuerzo()
		}
		else if(tipoSocio == "socio relajado"){
			return idiomas.any({id => act.idiomas().any({i => i == id})})
		}
	}

}

