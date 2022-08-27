/// @description State Adjust
if invState{
    if (pause = 0){
        resumeState = state;
        pause = 1;
    }
    state = scr_state_gui;
} else {
    state = resumeState;
    pause = 0;
}
script_execute(state);


