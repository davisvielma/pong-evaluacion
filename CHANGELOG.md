# Modificaciones al código del Pong

## IA para mover la pelota

El código de bloque para la IA se encuentra en la función update_pong.

1. Nos aseguramos que al colisionar la pelota con la paleta (player2) esta ultima se detenga. La linea de codigo se encuentra en la posición 188

```
else if (collides(ball_hitbox, player2_hitbox)) {
    al_play_sample(pong->sounds->paddle_hit, 1.0, 1.0, 1.0, ALLEGRO_PLAYMODE_ONCE, NULL);
    pong->ball.x = player2_hitbox.x1 - pong->ball.width;
    pong->ball.vx *= -1.03;
    pong->player2.vy = 0; //<--------------
}
```

2. Evaluamos si la pelota paso la mitad de la cancha y que su propiedad vx sea positiva, si estas condiciones son verdaderas dependiendo de la posición de la pelota la paleta subirá, bajara o se detendrá. El bloque de codigo se encuentra en las lineas 201 hasta 214

```
if(ball_hitbox.x1 >= pong->middle_line.x && pong->ball.vx > 0) {
    if(ball_hitbox.y1 > player2_hitbox.y1 && ball_hitbox.y2 < player2_hitbox.y2) {
        pong->player2.vy = 0;
    } else if(ball_hitbox.y1 < player2_hitbox.y1) {
        pong->player2.vy = -PADDLE_SPEED;
    } else if(ball_hitbox.y2 > player2_hitbox.y2) {
        pong->player2.vy = PADDLE_SPEED;
    }
}
```
## Estructura Middle_Line

Se creo los archivos .h .c, donde definimos la estructura Middle_Line con sus respectivas funciones.
