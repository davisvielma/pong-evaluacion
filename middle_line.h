#pragma once

#include "hitbox.h"

struct Middle_Line {
	float x;
	float y;
	float width;
	float height;
};

void init_middle_line(struct Middle_Line *middle_line, float x, float y, float w, float h);
void render_middle_line(struct Middle_Line middle_line);