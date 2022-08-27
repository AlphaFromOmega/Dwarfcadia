with (other) {
scr_get_input();
if invButton {invState = !invState}
if hotbarScrolldown && delay == 0 {
    hotbarSelect += 1
    delay = 5; 
        if hotbarSelect > 8 {
            hotbarSelect = 0;
        }
}
if hotbarScrollup && delay == 0 {
    hotbarSelect -= 1
    delay = 5; 
        if hotbarSelect < 0 {
            hotbarSelect = 8
        }
}
delay -= 1;
delay = max(0, delay);


}
