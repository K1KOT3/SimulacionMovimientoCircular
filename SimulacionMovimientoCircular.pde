int ball_radius; // Declaración de una variable entera para el radio de la pelota
float ball_y; // Declaración de una variable flotante para la posición vertical de la pelota
float ball_y0; // Declaración de una variable flotante para la posición inicial vertical de la pelota
float ball_x; // Declaración de una variable flotante para la posición horizontal de la pelota
float ball_x0; // Declaración de una variable flotante para la posición inicial horizontal de la pelota
float R; // Declaración de una variable flotante para el radio de la trayectoria circular de la pelota
float T; // Declaración de una variable flotante para el período de la trayectoria circular de la pelota
float time; // Declaración de una variable flotante para el tiempo transcurrido
//variables para el segundo moviemiento
float ball_y2; // Declaración de una variable flotante para la posición vertical de la pelota
float ball_x2; // Declaración de una variable flotante para la posición horizontal de la pelota
float R2; // Declaración de una variable flotante para el radio de la trayectoria circular de la pelota
//variables para el tercer moviemiento
float R_x; // Declaración de la componente x del radio pedida para el tercer movimiento
float R_y; // Declaración de la componente y del radio pedida para el tercer movimiento
float ball_y3; // Declaración de una variable flotante para la posición vertical de la pelota
float ball_x3; // Declaración de una variable flotante para la posición horizontal de la pelota

void setup() {
  size(600, 600); // Crea un lienzo de 600 píxeles de ancho y 600 píxeles de alto
  frameRate (70); // Establece la velocidad de fotogramas a 70
  ball_radius = 30; // Asigna el valor de 30 a la variable de radio de la pelota
  ball_y = 250.0; // Asigna el valor de 250.0 a la variable de posición vertical de la pelota
  ball_y0 = 300.0; // Asigna el valor de 300.0 a la variable de posición inicial vertical de la pelota
  ball_y2 = 300.0;  // Nueva variable para la segunda pelota
  ball_x = 250.0; // Asigna el valor de 250.0 a la variable de posición horizontal de la pelota
  ball_x0 = 300.0; // Asigna el valor de 300.0 a la variable de posición inicial horizontal de la pelota
  ball_x2 = 300.0;  // Nueva variable para la segunda pelota
  R = 200.0; // Asigna el valor de 200.0 a la variable de radio de la trayectoria circular de la pelota
  R2 = 200.0;  // Nuevo radio para la segunda pelota
  R_x = 100.0; // Radio para la coordenada x del tercer movimiento 
  R_y = 200.0; // Radio para la coordenada y del tercer movimiento
  T = 20.0; // Asigna el valor de 20.0 a la variable de período de la trayectoria circular de la pelota
  time = 0.0; // Asigna el valor de 0.0 a la variable de tiempo transcurrido
}

void draw() {
  background(255, 255, 255); // Establece el fondo del lienzo en blanco
  fill (50, 150, 40); // Establece el color de relleno para la elipse en negro
  ellipse (ball_x, ball_y, ball_radius, ball_radius); // Dibuja una elipse en la posición actual de la pelota
  ellipse(ball_x2, ball_y2, ball_radius, ball_radius);  // Segunda pelota
  ellipse(ball_x3, ball_y3, ball_radius, ball_radius);  // Tercera pelota
  ball_x = ball_x0 + R*cos(2*PI*time/T); // Calcula la nueva posición X de la pelota
  ball_y = ball_y0 + R*sin(2*PI*time/T); // Calcula la nueva posición Y de la pelota
  ball_x2 = ball_x0 + R2*sin(2*PI*(time)/T);  // Parámetro que cambia el sentido de giro contrario 
  ball_y2 = ball_y0 + R2*cos(2*PI*(time)/T);  // Parámetro que cambia el sentido de giro contrario 
  ball_x3 = ball_x0 + R_x*sin(2*PI*(time)/T);  // Parámetro que cambia el tercer movimiento 
  ball_y3 = ball_y0 + R_y*cos(2*PI*(time)/T);  // Parámetro que cambia el tercer movimiento
  time = time + 0.1; // Incrementa el tiempo para el siguiente fotograma
}

/* Explicad por que en el enunciado se ha explicitado que se han cambiado las expresiones
matematicas de las ecuaciones del movimiento circular, basandose en el sentido de giro
esperado.

Esto es debido a que en processing el sentido del eje está invertido (el signo) */
