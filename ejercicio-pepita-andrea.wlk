
// subido acá porque no me deja subir el repo :) 
object pepita {
    var energia = 100


method volar(distancia){
    energia = energia - 10 - distancia/10
}

method descansar() {
   energia = energia + 10
 }

method cansada(){
   return energia < 30
 }

method comer(alimento) {
   energia = energia + alimento.energiaQueAporta()
}

method energia() {
   return energia
 }

method energia(_energia) {
   energia = _energia
 }

}

object alpiste {
  method energiaQueAporta() {
   return 25
  }
}

object manzana {
  var gradoDeMadurez = 0

method energiaQueAporta() {
  return if (gradoDeMadurez < 3) {
    20 * gradoDeMadurez
  } else {
    0
  }
}

method gradoDeMadurez() {
  return gradoDeMadurez
} 

method gradoDeMadurez(_grado) {
  gradoDeMadurez = _grado
}

}



/*
-----------EJERCICIO 1) 
Hacer volar a pepita 200 m. Su energía ahora se decrementó en 30 calorías, quedando en 70 calorías.
Verificar que no está cansada.

pepita.volar(200)  -->  energía = 100 - 30 = 70  -->  cansada = False      Done

  Hacer volar a pepita otros 350 m, consumiendo 45 calorías adicionales para finalizar en 25 calorías.
Ahora sí está cansada pepita.

pepita.volar(350)  -->  energía = 70 - 45 = 25  -->  cansada = True        Done


  Hacer que pepita descanse. Su energía aumenta 10 calorías, llegando a 35.
Comprobar que, luego de descansar, pepita ya no está cansada.

pepita.descansar()  -->  energía = 25 + 10 = 35  -->  cansada = False      Done


-----------EJERCICIO 2)  ((reiniciar pepita))
  Hacer que pepita vuele 900m, luego de eso está cansada (su energía se redujo a 0).

pepita.volar(900)  -->  cansada = True  &&  energia = 0       Done

  Hacer que pepita coma alpiste, sigue estando cansada (energía = 25 calorías).

pepita.comer(alpiste)  -->  cansada = True  &&  energia = 25     Done

  Nuevamente hacer que pepita coma alpiste y verificar que ya no está cansada (energía = 50 calorías).

pepita.comer(alpiste)  -->  cansada = False  &&  energia = 50        Done

-----------EJERCICIO 3)
pepita.volar(200)                 -
pepita.energia()                  70
manzana.gradoDeMadurez(2)         grado = 2
pepita.comer(manzana)             -
pepita.energia()                  energia = 110
*/
