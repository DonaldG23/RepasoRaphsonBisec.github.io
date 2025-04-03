# RepasoRaphsonBisec.github.io
Repaso - previo parcial
1. Comparación de la velocidad de convergencia de los métodos
La velocidad de convergencia indica qué tan rápido un método numérico se acerca a la raíz de una ecuación. El método de bisección tiene una convergencia lenta pero segura, ya que en cada iteración divide el intervalo a la mitad sin considerar la forma de la función. En contraste, la regla falsa usa una interpolación lineal para estimar la raíz, lo que en muchos casos le permite converger más rápido. Sin embargo, si la función es muy asimétrica, la regla falsa puede avanzar lentamente porque uno de los extremos del intervalo apenas cambia.

En general, la regla falsa suele ser más rápida, pero la bisección es más confiable, ya que garantiza siempre la convergencia cuando hay un cambio de signo en el intervalo.

2. Cuándo usar métodos cerrados vs. abiertos
Los métodos numéricos para encontrar raíces pueden clasificarse en cerrados y abiertos. Los métodos cerrados, como la bisección y la regla falsa, requieren un intervalo inicial donde la función cambie de signo, lo que asegura la convergencia. Son útiles cuando no se tiene una buena estimación inicial de la raíz y se busca seguridad, aunque sean más lentos.

Por otro lado, los métodos abiertos, como Newton-Raphson y secante, no necesitan un intervalo inicial, sino un valor de partida. Estos métodos pueden ser mucho más rápidos, pero dependen de que la función sea derivable y de contar con una buena estimación inicial, pues de lo contrario pueden no converger.
