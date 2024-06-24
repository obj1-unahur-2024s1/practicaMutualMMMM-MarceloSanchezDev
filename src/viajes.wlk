class Viaje {

	const idiomas

	method idiomas() {
		return idiomas
	}

	method implicaEsfuerzo() {
		return false
	}

	method sirveParaBroncearse() {
		return false
	}

	method cuantosDiasDeActividad() {
		return 0
	}

	method esViajeInteresante() {
		return idiomas.size() > 2
	}

}

class ViajesPlaya inherits Viaje {

	var property largoPlaya
	const property cuantosDias = largoPlaya / 500

	override method implicaEsfuerzo() {
		return largoPlaya > 1200
	}

	override method sirveParaBroncearse() {
		return true
	}

	override method cuantosDiasDeActividad() {
		return largoPlaya / 500
	}

}

class ExcurcionCiudad inherits Viaje {

	var property cantAtracciones

	override method implicaEsfuerzo() {
		return cantAtracciones.between(5, 8)
	}

	override method sirveParaBroncearse() {
		return false
	}

	override method cuantosDiasDeActividad() {
		return cantAtracciones / 2
	}

	override method esViajeInteresante() {
		return super() or cantAtracciones == 5
	}

}

class ExcurcionCiudadTropical inherits ExcurcionCiudad {

	override method sirveParaBroncearse() {
		return true
	}

	override method cuantosDiasDeActividad() {
		return super() + 1
	}

}

class Trekking inherits Viaje {

	var property cantKm
	var property cantDiasSol

	override method implicaEsfuerzo() {
		return cantKm > 80
	}

	override method sirveParaBroncearse() {
		return cantDiasSol > 200 or (cantDiasSol.between(100, 200) and cantKm > 120)
	}

	override method cuantosDiasDeActividad() {
		return cantKm / 50
	}

	override method esViajeInteresante() {
		return super() and cantDiasSol > 140
	}

}

class ClasesGim {

	method idiomas() {
		return "espaniol"
	}

	method implicaEsfuerzo() {
		return true
	}

	method cuantosDiasDeActividad() {
		return 1
	}

}

