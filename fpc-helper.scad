
gap = 0.25;

width_6p = 7.5;
width_40p = 24.5;

module helper(body_width){
    handler_length = 35;
    guide_length = 25;
    block_size = 3;
    lower_block_size = 3;
    block_zheight = 5;
    inset = 1;
    connector_base_height = 2.5;
    thickness = 1;
    primer_handle_thickness = 1.65 + gap;
    primer_thickness = 1;

    cube([body_width, handler_length, thickness]);
    translate([0,connector_base_height+primer_handle_thickness,thickness]) cube([body_width,guide_length,primer_thickness]);    
    
    translate([-lower_block_size,0,0]) cube([lower_block_size,connector_base_height,block_zheight]);
    translate([body_width,0,0]) cube([lower_block_size,connector_base_height,block_zheight]);

    translate([-block_size,connector_base_height+primer_handle_thickness,0]) cube([block_size+inset,guide_length,block_zheight]);
    translate([body_width-inset,connector_base_height+primer_handle_thickness,0]) cube([block_size+inset,guide_length,block_zheight]);

    translate([-block_size, handler_length-block_size, 0]) cube([body_width+block_size*2,block_size,thickness]);
}

helper(width_6p + gap);