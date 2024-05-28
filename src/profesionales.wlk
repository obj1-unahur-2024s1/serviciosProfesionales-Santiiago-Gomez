// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ } //cambiar universidad
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { 
		return #{universidad.provincia()} //devolver un conjunto
	}
	
	method honorariosPorHora() { universidad.honorariosRecomendados() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	const property provinciasDondePuedeTrabajar = #{}
	var property honorariosPorHora
	
	method asignarProvincias(listaDeProvincias) {
		provinciasDondePuedeTrabajar.addAll(listaDeProvincias) //ya no agregas un elemento sino un conjunto
	}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() {
		
	}
}