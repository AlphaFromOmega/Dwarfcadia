input = 0;
image_speed = 0;

fix_hor = physics_fixture_create();

physics_fixture_set_polygon_shape(fix_hor);
physics_fixture_set_box_shape(fix_hor, 16, 2);

