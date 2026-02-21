///main_input_test();
if global.CONTROL==0{
    up=keyboard_check(vk_up);
    down=keyboard_check(vk_down);
    right=keyboard_check(vk_right);
    left=keyboard_check(vk_left);
    start=keyboard_check_pressed(vk_enter);
    hstart=keyboard_check(vk_enter);
    select=keyboard_check_pressed(vk_backspace);
    a=keyboard_check_pressed(ord('Z'));
    a_held=keyboard_check(ord('Z'))
    b=keyboard_check(ord('X'));
    bl=keyboard_check_pressed(ord('X'));
    c=keyboard_check_pressed(vk_rshift);
    c_held=keyboard_check(vk_rshift);
    d=keyboard_check_pressed(vk_lshift);
    d_held=keyboard_check(vk_lshift);
    lef=keyboard_check_pressed(vk_left);
    rig=keyboard_check_pressed(vk_right);
    dow=keyboard_check_pressed(vk_down);
    upp=keyboard_check_pressed(vk_up);
    l1=mouse_wheel_down();
    r1=mouse_wheel_up();
    l1h=keyboard_check(vk_lalt);
    r1h=keyboard_check(vk_ralt);
    l2=keyboard_check_pressed(vk_numpad4);
    r2=keyboard_check_pressed(vk_numpad6);
    l2h=keyboard_check(vk_numpad4);
    r2h=keyboard_check(vk_numpad6);
    any=keyboard_check_pressed(vk_anykey);
    
    rup=keyboard_check(vk_up);
    rdown=keyboard_check(vk_down);
    rright=keyboard_check(vk_right);
    rleft=keyboard_check(vk_left);
    
    cursor_rx=rright-rleft;
    cursor_ry=rdown-rup;
    cursor_r=keyboard_check_pressed(vk_space);
    
    mx = mouse_x;
    my = mouse_y;
    mp1 = mouse_check_button_pressed(mb_left);
    mk1 = mouse_check_button(mb_left);
    mh1 = mouse_check_button_released(mb_left);
    mp2 = mouse_check_button_pressed(mb_right);
    mh2 = mouse_check_button_released(mb_right);
} else {
    //First config
    start=gamepad_button_check_pressed(0,gp_start);
    hstart=gamepad_button_check(0,gp_start);
    select=gamepad_button_check_pressed(0,gp_select);
    a=gamepad_button_check_pressed(0,gp_face1);
    a_held=gamepad_button_check(0,gp_face1);
    b=gamepad_button_check(0,gp_face2);
    bl=gamepad_button_check_pressed(0,gp_face2);
    c=gamepad_button_check_pressed(0,gp_face3);
    c_held=gamepad_button_check(0,gp_face3);
    d=gamepad_button_check_pressed(0,gp_face4);
    d_held=gamepad_button_check(0,gp_face4);
    l1=gamepad_button_check_pressed(0,gp_shoulderl);
    r1=gamepad_button_check_pressed(0,gp_shoulderr);
    l1h=gamepad_button_check(0,gp_shoulderl);
    r1h=gamepad_button_check(0,gp_shoulderr);
    l2=gamepad_button_check_pressed(0,gp_shoulderlb);
    r2=gamepad_button_check_pressed(0,gp_shoulderrb);
    l2h=gamepad_button_check(0,gp_shoulderlb);
    r2h=gamepad_button_check(0,gp_shoulderrb);
    any=gamepad_button_check_pressed_any(0);
    
    //Prepare the CONSOLE MOVEMENTS!!!!
    stick_h=gamepad_axis_value(0,gp_axislh);
    stick_v=gamepad_axis_value(0,gp_axislv);
    var stick_rh=gamepad_axis_value(0,gp_axisrh);
    var stick_rv=gamepad_axis_value(0,gp_axisrv);
    
    //Last config!
    up=gamepad_button_check(0,gp_padu) or stick_v<=-gmin;
    down=gamepad_button_check(0,gp_padd) or stick_v>=gmin;
    right=gamepad_button_check(0,gp_padr) or stick_h>=gmin;
    left=gamepad_button_check(0,gp_padl) or stick_h<=-gmin;
    lef=gamepad_button_check_pressed(0,gp_padl) or (stick_h<=-gmin && global.prev_stick_h>-gmin);
    rig=gamepad_button_check_pressed(0,gp_padr) or (stick_h>=gmin && global.prev_stick_h<gmin);
    dow=gamepad_button_check_pressed(0,gp_padd) or (stick_v>=gmin && global.prev_stick_v<gmin);
    upp=gamepad_button_check_pressed(0,gp_padu) or (stick_v<=-gmin && global.prev_stick_v>-gmin);
    
    rup=gamepad_button_check(0,gp_padu) or stick_rv<=-gmin;
    rdown=gamepad_button_check(0,gp_padd) or stick_rv>=gmin;
    rright=gamepad_button_check(0,gp_padr) or stick_rh>=gmin;
    rleft=gamepad_button_check(0,gp_padl) or stick_rh<=-gmin;
    
    cursor_x=right-left;
    cursor_y=down-up;
    
    cursor_rx=rright-rleft;
    cursor_ry=rdown-rup;
    cursor_r=gamepad_button_check(0,gp_stickr);
    
    global.prev_stick_h = stick_h;
    global.prev_stick_v = stick_v;
    
    mx+=cursor_x*(2*sns);
    my+=cursor_y*(2*sns);
    mp1 = a;
    mk1 = a_held;
    mh1 = gamepad_button_check_released(0,gp_face1);
    mp2 = bl;
    mh2 = gamepad_button_check_released(0,gp_face2);
}

//PLAYER 2!!
{
    //First config
    p2_start=gamepad_button_check_pressed(1,gp_start);
    p2_hstart=gamepad_button_check(1,gp_start);
    p2_select=gamepad_button_check(1,gp_select);
    p2_a=gamepad_button_check_pressed(1,gp_face1);
    p2_a_held=gamepad_button_check(1,gp_face1);
    p2_b=gamepad_button_check(1,gp_face2);
    p2_bl=gamepad_button_check_pressed(1,gp_face2);
    p2_c=gamepad_button_check_pressed(1,gp_face3);
    p2_c_held=gamepad_button_check(1,gp_face3);
    p2_d=gamepad_button_check_pressed(1,gp_face4);
    p2_d_held=gamepad_button_check(1,gp_face4);
    p2_l1=gamepad_button_check_pressed(1,gp_shoulderl);
    p2_r1=gamepad_button_check_pressed(1,gp_shoulderr);
    p2_l1h=gamepad_button_check(1,gp_shoulderl);
    p2_r1h=gamepad_button_check(1,gp_shoulderr);
    p2_l2=gamepad_button_check_pressed(1,gp_shoulderlb);
    p2_r2=gamepad_button_check_pressed(1,gp_shoulderrb);
    p2_l2h=gamepad_button_check(1,gp_shoulderlb);
    p2_r2h=gamepad_button_check(1,gp_shoulderrb);
    p2_any=gamepad_button_check_pressed_any(1);
    
    //Prepare the CONSOLE MOVEMENTS!!!!
    p2_stick_h=gamepad_axis_value(1,gp_axislh);
    p2_stick_v=gamepad_axis_value(1,gp_axislv);
    var p2_stick_rh=gamepad_axis_value(1,gp_axisrh);
    var p2_stick_rv=gamepad_axis_value(1,gp_axisrv);
    
    //Last config!
    p2_up=gamepad_button_check(1,gp_padu) or p2_stick_v<=-gmin;
    p2_down=gamepad_button_check(1,gp_padd) or p2_stick_v>=gmin;
    p2_right=gamepad_button_check(1,gp_padr) or p2_stick_h>=gmin;
    p2_left=gamepad_button_check(1,gp_padl) or p2_stick_h<=-gmin;
    p2_lef=gamepad_button_check_pressed(1,gp_padl) or (p2_stick_h<=-gmin && global.p2_prev_stick_h>-gmin);
    p2_rig=gamepad_button_check_pressed(1,gp_padr) or (p2_stick_h>=gmin && global.p2_prev_stick_h<gmin);
    p2_dow=gamepad_button_check_pressed(1,gp_padd) or (p2_stick_v>=gmin && global.p2_prev_stick_v<gmin);
    p2_upp=gamepad_button_check_pressed(1,gp_padu) or (p2_stick_v<=-gmin && global.p2_prev_stick_v>-gmin);
    
    p2_rup=gamepad_button_check(1,gp_padu) or p2_stick_rv<=-gmin;
    p2_rdown=gamepad_button_check(1,gp_padd) or p2_stick_rv>=gmin;
    p2_rright=gamepad_button_check(1,gp_padr) or p2_stick_rh>=gmin;
    p2_rleft=gamepad_button_check(1,gp_padl) or p2_stick_rh<=-gmin;
    
    p2_cursor_x=p2_right-p2_left;
    p2_cursor_y=p2_down-p2_up;
    
    p2_cursor_rx=p2_rright-p2_rleft;
    p2_cursor_ry=p2_rdown-p2_rup;
    p2_cursor_r=gamepad_button_check(1,gp_select);
    
    global.p2_prev_stick_h = p2_stick_h;
    global.p2_prev_stick_v = p2_stick_v;
    
    p2_mx+=p2_cursor_x*(2*sns);
    p2_my+=p2_cursor_y*(2*sns);
    p2_mp1 = p2_a;
    p2_mk1 = p2_a_held;
    p2_mh1 = gamepad_button_check_released(1,gp_face1);
    p2_mp2 = p2_bl;
    p2_mh2 = gamepad_button_check_released(1,gp_face2);    
}
