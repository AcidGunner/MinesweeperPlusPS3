///gamepad_button_check_pressed_any(pad) {
    ///@desc    checks for gamepad input
    
    for ( var i = gp_face1; i <= gp_padr; i++ ) {
        if ( gamepad_button_check(argument0, i ) ) return i;
    }
    //for ( var i = gp_axislh; i <= gp_axisrv; i++ ) {
    //    if abs( gamepad_axis_value( _pad_num, i ) ) return i;
    //}
