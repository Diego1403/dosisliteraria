
import 'package:flutter/material.dart';

class SnippetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          """I
Del aire al aire, como una red vacía,
iba yo entre las calles y la atmósfera, llegando y despidiendo,
en el advenimiento del otoño la moneda extendida
de las hojas, y entre la primavera y las espigas,
lo que el más grande amor, como dentro de un guante
que cae, nos entrega como una larga luna.

(Días de fulgor vivo en la intemperie
de los cuerpos: aceros convertidos
al silencio del ácido:
noches desdichadas hasta la última harina:
estambres agredidos de la patria nupcial.)

Alguien que me esperó entre los violines
encontró un mundo como una torre enterrada
hundiendo su espiral más abajo de todas
las hojas de color de ronco azufre:
más abajo, en el oro de la geología,
como una espada envuelta en meteoros,
hundí la mano turbulenta y dulce
en lo más genital de lo terrestre.

Puse la frente entre las olas profundas,
descendí como gota entre la paz sulfúrica,
y, como un ciego, regresé al jazmín
de la gastada primavera humana.
Ninguna de las cosas que no competen al hombre, en tanto que es hombre, debe éste observar. No son exigencias del hombre, ni su naturaleza las anuncia, ni tampoco son perfecciones de la naturaleza del hombre. Pues bien, tampoco reside en ellas el fin del hombre, ni tampoco lo que contribuye a colmar el fin: el bien. Es más, si alguna de estas cosas concerniera al hombre, no sería de su incumbencia menospreciarlas ni sublevarse contra ellas; tampoco podría ser elogiado el hombre que se presentase como sin necesidad de ellas ni sería bueno el hombre propenso a actuar por debajo de sus posibilidades en alguna de ellas, si realmente ellas fueran bienes. Pero ahora, cuanto más se despoja uno de estas cosas u otras semejantes o incluso soporta ser despojado de una de ellas, tanto más es hombre de bien."""
          ,textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontSize: 20,
              ),
        ),
      ),
    );
  }
}
