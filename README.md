# catchFoodGame
Game of catching elements with the voice and the hand. Recognizes voice (trained words) and human skin. Programmed with Matlab.

# Introducción
Juego implementado mediante la interfaz gráfica de Matlab que usa de forma dinámica reconocimiento de audio y vídeo.
Consiste en un juego 2D en el que el jugador debe recoger con una cesta la comida que cae desde lo alto de la pantalla pudiendo mover la comida y la cesta mediante el audio y video.

![img1](https://raw.githubusercontent.com/jostey/catchFoodGame/img1.png)

Mediante el reconocimiento de voz se identifica qué elemento de los que aparecen en pantalla se quiere desplazar (pizza, perrito, hamburguesa, helado, pollo, tarta, cesta).

Mediante el reconocimiento de vídeo se identifica el movimiento a realizar (izquierda o derecha) con el uso del dedo.

# Reconocimiento de audio

Para el reconocimiento de voz hemos utilizado el método basado en DTW sin grandes modificaciones. 
El reconociemiento de audio se basa, tanto en ‘test’ como en ‘training’, en patrones de 1 segundo de duración:
	Frecuencia de muestreo = 8000 muestras/s de 16 bits;
	Longitud de tramas = 100 muestras (12,5 ms) ;

# Reconocimiento de video

En este caso, el software reconocerá el dedo del jugador y según la posición podrá desplazar el elemento seleccionado por voz.
Primero, sacaría el objeto nuevo (en este caso la mano) de la foto. Esto se realiza restando:

![img2](https://raw.githubusercontent.com/jostey/catchFoodGame/img2.png)

Filtro de Clausura 	"imclose(img, strel('disk',5));"

![img3](https://raw.githubusercontent.com/jostey/catchFoodGame/img3.png)

Umbralización
![img4](https://raw.githubusercontent.com/jostey/catchFoodGame/img4.png)

Filtro de Clausura 	"imclose(img, strel('disk',8));"
![img5](https://raw.githubusercontent.com/jostey/catchFoodGame/img5.png)

Finalmente, tenemos el reconocimiento de la mano en encuadrándolo y viendo el vector de dirección.
![img6](https://raw.githubusercontent.com/jostey/catchFoodGame/img6.png)

