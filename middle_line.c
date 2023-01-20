#include <allegro5/allegro_primitives.h>
#include "middle_line.h"
#include "settings.h"

void init_middle_line(struct Middle_Line *middle_line, float x, float y, float w, float h) {
	middle_line->x = x;
	middle_line->y = y;
	middle_line->width = w;
	middle_line->height = h;
}

void render_middle_line(struct Middle_Line middle_line) {
	float aux_height = middle_line.height / 11;

	for(int i = 0; i < 11; i++) {
		if(i % 2 == 0) {
			al_draw_filled_rectangle(
				middle_line.x, (i * aux_height), (middle_line.x + middle_line.width), ((i  + 1) * aux_height),
				al_map_rgb(255, 255, 255));
		}
	}
}