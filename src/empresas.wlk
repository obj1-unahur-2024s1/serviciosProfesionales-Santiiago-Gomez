import profesionales.*

class Empresa {
	const profesionales = {}
	var property honorarioDeReferencia
	
	method agregarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	method eliminarProfesional(unProfesional) {
		profesionales.remove(unProfesional)
	}
	method cuantosEstudiaronEn(unaUniversidad) {
		return profesionales.count({p=>p.universidad()==unaUniversidad}) //recorre los elementos
	}
	method profesionalesCaros() {
		return profesionales.filter({p=>p.honorariosPorHora()>self.honorarioDeReferencia()}) //la instancia de la calse emoresa
	}
	method universidadesFormadoras() {
		return profesionales.map({p=>p.universidad()}).asSet() //lo convierte en conjunto y le saca los repetidos
	}
	method profesionalMasBarato() {
		
		return profesionales.min({p=>p.honorariosPorHora()}) //se queda con el objeto de menor valor usando el transformador{}
	}
	method esDeGenteAcotada() {
		profesionales.all()
	}
}
