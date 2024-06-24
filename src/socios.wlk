import viajes.*

class Socio {

	const actividadesRealizadas = []
	const actividadesMax

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

}

