;19L-0917 & 19L-0949
;Abdul Ali & Abdul Basit 
;Module 3 (Final Submission)
;Welcome/Start Screen
;Game Instructions
;Ending Screen
;Background movement
;Tilted Roads
;Random hurdles (Danger Car + holes/spikes)
;Car movement from Left/Right Keys(Scan code: 0x4B , 0x4D)
;Score Increment (Continues inc + Inc if bumps into bonus car)
;Fuel Decrement (Also terminate when fuel is empty)
;Crash event (Game over)
;Speed changes with Up and Down Arrow keys
;Replay Option

[org 0x0100]
jmp start
;background coordinates
;straight road coordinates
Rowbg_1:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,11,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_2:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,11,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_3:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_4:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,5,0x0,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,5,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_5:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,1,0x0,5,0x8,5,0x7,1,0xf,5,0x7,5,0x8,1,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_6:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,1,0x0,5,0x8,5,0x7,1,0xf,5,0x7,5,0x8,1,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_7:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,1,0x0,5,0x8,11,0x7,5,0x8,1,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_8:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,1,0x0,5,0x8,11,0x7,5,0x8,1,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_9:dw 2,0x8,1,0x0,3,0x7,1,0x0,3,0x3,5,0x0,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,5,0x0,3,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_10:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_11:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,5,0x7,1,0xf,5,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_12:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_13:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,11,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_14:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,11,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_15:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,5,0x7,1,0xf,5,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_16:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_17:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,5,0x7,1,0xf,5,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_18:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_19:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,11,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_20:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,11,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_21:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,5,0x7,1,0xf,5,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_22:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_23:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,5,0x7,1,0xf,5,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_24:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0x0,5,0x7,1,0xf,5,0x7,1,0x0,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
Rowbg_25:dw 2,0x8,1,0x0,3,0x7,1,0x0,8,0x3,1,0xf,11,0x7,1,0xf,8,0x3,1,0x0,3,0x7,1,0x0,2,0x8,-1
;tilt road
Rowev2_1: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 8,  0x3, 1, 0x0, 11, 0x7, 1, 0x0, 1,0xf, 7,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_2: dw  2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 8,  0x3, 1, 0x0, 1, 0xf,11, 0x7, 1, 0x0, 7,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_3: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 9,  0x3, 1, 0xf,11, 0x7, 1, 0xf, 1, 0x0, 1, 0xf, 5,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_4: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 9,  0x3, 1, 0x0,1, 0xf, 1,0x0,11, 0x7, 1, 0x0, 5,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_5: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3, 1, 0xf ,11, 0x7, 1, 0xf,1, 0x0, 1, 0xf,3,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_6: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3, 1, 0x0,1,0xf,1,0x0 ,11, 0x7, 1, 0x0, 3,0x3, 1, 0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_7: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 13,  0x3, 1, 0xf,11, 0x7,1,0xf, 1, 0x0,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_8: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 13,  0x3, 1, 0x0,1,0xf,1,0x0,11, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_9: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3, 1, 0xf,11, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_10: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3, 1, 0x0,5, 0x7,1,0xf, 5, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_11: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3, 1, 0xf,5, 0x7,1,0xf, 5, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_12: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3, 4, 0x0,1,0x0,5, 0x7,1,0xf, 5, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_13: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0xf,5, 0x7,1,0xf, 5, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_14: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0x0,11, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_15: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0xf,11, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_16: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0x0,5, 0x7,1,0xf,5,0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_17: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0xf,5, 0x7,1,0xf,5,0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_18: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0x0,5, 0x7,1,0xf,5,0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_19: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0xf,5, 0x7,1,0xf,5,0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_20: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,1,0x0,3,0x8,1,0x0,11, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_21: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 11,  0x3,4,0x0,1,0xf,11, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_22: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3,1,0x0,5, 0x7,1,0xf, 5, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_23: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3,1,0xf,5, 0x7,1,0xf, 5, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_24: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3,1,0x0,5, 0x7,1,0xf, 5, 0x7,1,0x0,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
Rowev2_25: dw 2, 0x8, 1, 0x0, 3,0x7, 1, 0x0, 15,  0x3,1,0xf,5, 0x7,1,0xf, 5, 0x7,1,0xf,2,0x0, 3, 0x7, 1,0x0, 2,0x8,-1
;start /end page 

RowSP1: dw 33, 0x0, 1,0x2, 1,0x4, 13, 0x7, 3, 0x0, 5, 0x7, 1, 0xf, 5, 0x7, 3, 0x0, 13, 0x7, 1,0x4, 1, 0x2,-1
RowSP2: dw 33, 0x0, 2, 0x2, 1,0x4, 11, 0x8, 1, 0x4, 3, 0x0, 11, 0x8, 3,0x0, 1, 0x4, 11, 0x8, 1,0xf, 2, 0x2,-1
RowSP3: dw 33, 0x0, 3, 0x2, 1,0xf, 10, 0x7, 19, 0x4, 10, 0x7, 1,0xf, 3, 0x2,-1
RowSP4: dw 33, 0x0, 4, 0x2, 1,0xf, 9, 0x8, 7, 0xE, 5, 0x5, 7, 0xE, 9, 0x8, 1, 0x4, 4, 0x2,-1
RowSP5: dw 33, 0x0, 5, 0x2, 1, 0x4, 6, 0x7, 23, 0x5, 6, 0x7, 1, 0x4, 5, 0x2,-1
RowSP6: dw 33, 0x0, 6, 0x2, 1, 0xf, 6, 0x8, 2, 0x5,1, 0x8, 2, 0x0, 11, 0xf, 2, 0x0, 1, 0x8, 2, 0x5, 6, 0x8, 1, 0xf, 6, 0x2,-1
RowSP7: dw 33, 0x0, 7, 0x2, 1, 0xf, 6, 0x7, 1, 0x5, 2,0x7, 2, 0x0, 9, 0xf, 2, 0x0, 2, 0x7, 1, 0x5, 6, 0x7, 1, 0xf, 7, 0x2,-1
RowSP8: dw 33, 0x0, 8, 0x2, 1, 0x4, 7, 0x8, 2, 0xf, 2, 0x0, 7, 0x4, 2, 0x0,2, 0xf, 7, 0x8, 1, 0x4, 8, 0x2,-1
RowSP9: dw 33, 0x0, 9, 0x2, 1, 0x4, 9, 0x7, 9, 0x0, 9, 0x7, 1, 0x4, 9, 0x2,-1
RowSP10: dw 33, 0x0, 10, 0x2, 1, 0xf, 25, 0x8, 1, 0xf, 10, 0x2,-1
RowSP11: dw 33, 0x0, 11, 0x2, 1, 0xf, 11, 0x7, 1, 0xf, 11, 0x7, 1, 0xf, 11, 0x2,-1
RowSP12: dw 33, 0x0, 12, 0x2, 1, 0x4, 21, 0x8, 1, 0x4, 12, 0x2,-1
RowSP13: dw 33, 0x0, 13, 0x2, 1, 0x4, 9, 0x7, 1, 0xf, 9, 0x7, 1, 0x4, 13,0x2,-1
RowSP14: dw 33, 0x0, 14, 0x2, 1,  0xf, 17, 0x8, 1, 0xf, 14, 0x2,-1
RowSP15: dw 33, 0x0, 10, 0x6, 1, 0x9, 1, 0xE, 22, 0x6, 1, 0xE, 2, 0x9, 10, 0x6,-1
RowSP16: dw 33, 0x0, 2, 0x9, 6, 0x6, 3, 0x9, 3, 0xE, 18, 0x6, 3, 0xE, 4, 0x9, 6, 0x6, 2, 0x9,-1
RowSP17: dw 33, 0x0, 4, 0x9, 2, 0x6,7, 0x9,3, 0xE,  14, 0x6, 3, 0xE, 8, 0x9, 2, 0x6, 4, 0x9,-1
RowSP18: dw 33, 0x0, 15, 0x9, 3, 0xE, 10, 0x6, 3, 0xE, 16, 0x9,-1
RowSP19: dw 33, 0x0, 17, 0x1,3, 0xE, 6, 0x6, 3, 0xE, 18, 0x1 ,-1
RowSP20: dw 33, 0x0, 19, 0x1,3, 0xE, 2, 0x6, 3, 0xE, 20, 0x1,-1
RowSP21: dw 33, 0x0, 21, 0x1,4, 0xE, 22, 0x1,-1
RowSP22: dw 33, 0x0, 47,0x1,-1
RowSP23: dw 33, 0x0, 47,0x1,-1
RowSP24: dw 33, 0x0, 47,0x1,-1
RowSP25: dw 33, 0x0, 47,0x1,-1
;counter for every next row
current_rowbg:db 25

event2_timer:dw 100
event2_stage:db 1


;hurdle coordinates
hurdle_col: dw 17,18,-1
hurdle_row: dw 0,0,-1

;hurdle timer
hurdle_timer: dw 50

;car_player coordinates
car_col: dw 21,22,23,-1
car_row:  dw 21,22,23,-1
;car_player background
car_1strow: dw 0x0fdb,0x0fdb,0x0fdb,-1
car_2ndrow: dw 0x0fdb,0x0fdb,0x0fdb,-1
car_3rdrow: dw 0x0fdb,0x0fdb,0x0fdb,-1

;car_danger coordinates
carD_col: dw 18,19,20,-1
carD_row:  dw 0,0,0,-1

carD_color: dw 0000b

;car_danger coordinates
carD2_col: dw 18,19,20,-1
carD2_row:  dw 0,0,0,-1

carD2_color: dw 0000b

;car_danger background
card_1strow: dw 0x0fdb,0x0fdb,0x0fdb,-1
card_2ndrow: dw 0x0fdb,0x0fdb,0x0fdb,-1
card_3rdrow: dw 0x0fdb,0x0fdb,0x0fdb,-1

;car_danger background
card2_1strow: dw 0x0fdb,0x0fdb,0x0fdb,-1
card2_2ndrow: dw 0x0fdb,0x0fdb,0x0fdb,-1
card2_3rdrow: dw 0x0fdb,0x0fdb,0x0fdb,-1

;car_danger_stage (will be used to populate first row)
card_stage: dw 0
card_timer: dw 25
car_speed: dw 3
card_crash_counter:dw 21
card_crash_check:db 0
card_crash_enabled_position: dw 3

card2_stage: dw 0
card2_timer: dw 35

card2_crash_counter:dw 21
card2_crash_check:db 0
card2_crash_enabled_position: dw 3

hurdle_crash_counter:dw 21
hurdle_crash_check:db 0
hurdle_crash_enabled_position: dw 3

carb_crash_counter:dw 21
carb_crash_check:db 0
carb_crash_enabled_position: dw 3

bool_disable_card: dw 0
bool_disable_card2: dw 0

bool_disable_tilt_road:dw 0
bool_termination_by_crash: db 0
;car_bonus coordinates
carB_col: dw 23,24,25,-1
carB_row  dw 0,0,0,-1
carb_stage: dw 0
carb_timer: dw 189

;saving old isr
oldisr: dd 0

;car movement locks
road_corners: dw 16, 26
apparent_road_corners: dw 16, 26
check_1_roadcorner: dw 0
counter_reset_stage: dw 14
counter_correction_stage: dw 8
;for random number
seed: dw 10 ; you can change the value of seed 

;start_play_status
bool_start_status: db 0
bool_end_status:db 0

;score delay
score_delay: db 3
fuel_delay: db 8
;text
Game_string: db 'ROAD FIGHTER'
Game_string_len: dw 12
Game_string_atrb: dw 0xf

Play_string: db 'P-> Play'
Play_string_len: dw 8
Play_string_atrb: dw 0xf

Escape_string: db 'Esc-> Escape'
Escape_string_len: dw 12
Escape_string_atrb: dw 0xf

End_string: db 'GAME OVER'
End_string_len: dw 9
End_string_atrb: dw 0xf

PlayA_string: db 'P-> Play Again'
PlayA_string_len: dw 14
PlayA_string_atrb: dw 0xf

EscapeT_string: db 'Esc-> Terminate Game'
EscapeT_string_len: dw 20
EscapeT_string_atrb: dw 0xf

ShowScore_string: db 'Your Score was:'
ShowScore_string_len: dw 15
ShowScore_string_atrb: dw 0xf


score: db 'Score'
score_len: dw 5
score_atrb: dw 0xf
totalscore: dw 0;

fuel: db 'Fuel'
fuel_len: dw 4
fuel_atrb: dw 0xf
totalfuel: dw 100;

Instructions: db'Game Instructions:'
Instructions_len: dw 18
Instructions_atrb: dw 0xE

RightKey: db'1. Press Right Arrow Key (->)'
RightKey_len:dw 29
RightKey_atrb: dw 0xf
RightKey2: db'to move right'
RightKey_len2:dw 13
RightKey_atrb2: dw 0xf

LeftKey: db'2. Press Left Arrow Key (<-)'
LeftKey_len:dw 28
LeftKey_atrb: dw 0xf
LeftKey2: db'to move left'
LeftKey_len2:dw 12
LeftKey_atrb2: dw 0xf

Crashstr: db'3. Donot let other cars'
Crashstr_len:dw 23
Crashstr_atrb: dw 0xf
Crashstr2: db'to collide with your car'
Crashstr_len2:dw 24
Crashstr_atrb2: dw 0xf

Holestr: db'4. Donot let your car to'
Holestr_len:dw 24
Holestr_atrb: dw 0xf
Holestr2: db'hit the spikes on road'
Holestr_len2:dw 22
Holestr_atrb2: dw 0xf

Fuelstr: db'5. Your fuel is limited!'
Fuelstr_len:dw 24
Fuelstr_atrb: dw 0xf

Bonusstr: db'6. Blinking car is your ally.'
Bonusstr_len:dw 29
Bonusstr_atrb: dw 0xf
Bonusstr2: db'Hit it!'
Bonusstr_len2:dw 7
Bonusstr_atrb2: dw 0xf

UpKey: db'7. Press Up Arrow Key to'
UpKey_len:dw 24
UpKey_atrb: dw 0xf
UpKey2: db'to increase speed'
UpKey_len2:dw 17
UpKey_atrb2: dw 0xf

DownKey: db'8. Press Down Arrow Key to'
DownKey_len:dw 26
DownKey_atrb: dw 0xf
DownKey2: db'to decrease speed'
DownKey_len2:dw 17
DownKey_atrb2: dw 0xf

Instructions_pause: db 'Game will start in: '
Instructions_pause_len: dw 18
Instructions_pause_atrb: dw 0xC

;this function will be used to print instructions page
instructions_page:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	call clrscr
	call instructions_printing

	push 0
	mov ax, 5
	push ax
	mov ax, 2
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Instructions_pause_len]
	push bx
	mov bx, Instructions_pause
	push bx
	mov bx, [Instructions_pause_atrb]
	push bx
	push dx
	call print_string

	mov cx, 1000; 
	delay_loopx:
		push cx
		mov cx, 0xFFFF
		delay_loopy:
			loop delay_loopy
			pop cx
	
	cmp cx, 1000
	je print_10
	cmp cx, 900
	je print_9
	cmp cx, 800
	je print_8
	cmp cx, 700
	je print_7
	cmp cx, 600
	je print_6
	cmp cx, 500
	je print_5
	cmp cx, 400
	je print_4
	cmp cx, 300
	je print_3
	cmp cx, 200
	je print_2
	cmp cx, 100
	je print_1
	jmp cont_delay_loop
	print_10:
	mov ax, 10
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_9:
	mov ax, 9
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_8:
	mov ax, 8
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_7:
	mov ax, 7
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_6:
	mov ax, 6
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_5:
	mov ax, 5
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_4:
	mov ax, 4
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_3:
	mov ax, 3
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_2:
	mov ax, 2
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	print_1:
	mov ax, 1
	push ax
	call print_ins_delay_timer
	jmp cont_delay_loop
	
	cont_delay_loop:
	sub cx, 1
	cmp cx, 0
	ja delay_loopx

	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 
	
;this function will be used to print the timer for start game
print_ins_delay_timer: ;push value @4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	mov ax, 0xb800
	mov es, ax 
	
	push 0
	mov ax, 24
	push ax
	mov ax, 2
	push ax
	call get_pixel
	pop dx
	mov di, dx
	
	mov cx, 3
	clr_placeholder:
	mov word [es:di], 0x0720 
	add di, 2
	loop clr_placeholder
	
	mov ax, [bp+4]
	push ax
	push dx
	call print_number
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 2
	
;will be used to increment the score
inc_score:; push inc factor @4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	mov ax, [totalscore]
	add ax, [bp+4]
	mov word[totalscore], ax
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 2
	
;will be used to decrement the fuel
dec_fuel:; push dec factor @4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	mov ax, [totalfuel]
	sub ax, [bp+4]
	mov [totalfuel], ax
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 2
	
;will be used to increment the fuel
inc_fuel:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	mov ax, 100
	mov [totalfuel], ax
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 


;will be used to print SCORE	
score_printing:

	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	push 0
	mov ax, 46
	push ax
	mov ax, 6
	push ax
	call get_pixel
	pop dx
	mov ax, [totalscore]
	push ax
	push dx
	call print_number
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 

;will be used to print SCORE	
fuel_printing:

	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	
	
	
	push 0
	mov ax, 46
	push ax
	mov ax, 9
	push ax
	call get_pixel
	pop dx
	
	;clearing pixels before re-printing on them
	mov ax, 0xb800
	mov es, ax 
	mov di, dx
	mov cx, 3
	loop_reprintclr:
		mov word [es:di], 0x0720 
		add di, 2
		loop loop_reprintclr
	
	mov ax, [totalfuel]
	push ax
	push dx
	call print_number
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 


;will be used to print NUMBERS
print_number: ; push num @6 push pos @4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	mov ax, 0xb800
	mov es, ax ; point es to video base
	mov ax, [bp+6] ; load number in ax
	mov bx, 10 ; use base 10 for division
	mov cx, 0 ; initialize count of digits
	
	nextdigitx:
		mov dx, 0 ; zero upper half of dividend
		div bx ; divide by 10
		add dl, 0x30 ; convert digit into ascii value
		push dx ; save ascii value on stack
		inc cx ; increment count of values
		cmp ax, 0 ; is the quotient zero
		jnz nextdigitx ; if no divide it again
	
	mov di, [bp+4]
	
	nextposx: 
		pop dx ; remove a digit from the stack
		mov dh, 0xf ; use normal attribute
		mov [es:di], dx ; print char on screen
		add di, 2 ; move to next screen location
		loop nextposx ; repeat for all digits on stack
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 4
	
;this function will be used to print all the instructions
instructions_printing:
	push bp
	mov bp, sp
	push ax
	push di
	push bx
	push dx
	
	push 0
	mov ax, 25
	push ax
	mov ax, 5
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Instructions_len]
	push bx
	mov bx, Instructions
	push bx
	mov bx, [Instructions_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 7
	push ax
	call get_pixel
	pop dx
	
	mov bx, [RightKey_len]
	push bx
	mov bx, RightKey
	push bx
	mov bx, [RightKey_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 8
	push ax
	call get_pixel
	pop dx
	
	mov bx, [RightKey_len2]
	push bx
	mov bx, RightKey2
	push bx
	mov bx, [RightKey_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 9
	push ax
	call get_pixel
	pop dx
	
	mov bx, [LeftKey_len]
	push bx
	mov bx, LeftKey
	push bx
	mov bx, [LeftKey_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 10
	push ax
	call get_pixel
	pop dx
	
	mov bx, [LeftKey_len2]
	push bx
	mov bx, LeftKey2
	push bx
	mov bx, [LeftKey_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 11
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Crashstr_len]
	push bx
	mov bx, Crashstr
	push bx
	mov bx, [Crashstr_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 12
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Crashstr_len2]
	push bx
	mov bx, Crashstr2
	push bx
	mov bx, [Crashstr_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 13
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Holestr_len]
	push bx
	mov bx, Holestr
	push bx
	mov bx, [Holestr_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 14
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Holestr_len2]
	push bx
	mov bx, Holestr2
	push bx
	mov bx, [Holestr_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 15
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Fuelstr_len]
	push bx
	mov bx, Fuelstr
	push bx
	mov bx, [Fuelstr_atrb]
	push bx
	push dx
	call print_string

	push 0
	mov ax, 25
	push ax
	mov ax, 16
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Bonusstr_len]
	push bx
	mov bx, Bonusstr
	push bx
	mov bx, [Bonusstr_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 17
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Bonusstr_len2]
	push bx
	mov bx, Bonusstr2
	push bx
	mov bx, [Bonusstr_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 18
	push ax
	call get_pixel
	pop dx
	
	mov bx, [UpKey_len]
	push bx
	mov bx, UpKey
	push bx
	mov bx, [UpKey_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 19
	push ax
	call get_pixel
	pop dx
	
	mov bx, [UpKey_len2]
	push bx
	mov bx, UpKey2
	push bx
	mov bx, [UpKey_atrb2]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 20
	push ax
	call get_pixel
	pop dx
	
	mov bx, [DownKey_len]
	push bx
	mov bx, DownKey
	push bx
	mov bx, [DownKey_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 25
	push ax
	mov ax, 21
	push ax
	call get_pixel
	pop dx
	
	mov bx, [DownKey_len2]
	push bx
	mov bx, DownKey2
	push bx
	mov bx, [DownKey_atrb2]
	push bx
	push dx
	call print_string
	
	pop dx
	pop bx
	pop di
	pop ax
	pop bp
	ret

;will be used to develop starting/launch page
start_page:
	push bp
	mov bp, sp
	push ax
	push di
	push bx
	push dx
	
	mov ax, 0
	push ax
	mov di, RowSP25
	push di
	call print_onNthRow
	
	mov ax, 1
	push ax
	mov di, RowSP24
	push di
	call print_onNthRow
	
	mov ax, 2
	push ax
	mov di, RowSP23
	push di
	call print_onNthRow
	
	mov ax, 3
	push ax
	mov di, RowSP22
	push di
	call print_onNthRow
	
	mov ax, 4
	push ax
	mov di, RowSP21
	push di
	call print_onNthRow
	
	mov ax, 5
	push ax
	mov di, RowSP20
	push di
	call print_onNthRow
	
	mov ax, 6
	push ax
	mov di, RowSP19
	push di
	call print_onNthRow
	
	mov ax, 7
	push ax
	mov di, RowSP18
	push di
	call print_onNthRow
	
	mov ax, 8
	push ax
	mov di, RowSP17
	push di
	call print_onNthRow
	
	mov ax, 9
	push ax
	mov di, RowSP16
	push di
	call print_onNthRow
	
	mov ax, 10
	push ax
	mov di, RowSP15
	push di
	call print_onNthRow
	
	mov ax, 11
	push ax
	mov di, RowSP14
	push di
	call print_onNthRow
	
	mov ax, 12
	push ax
	mov di, RowSP13
	push di
	call print_onNthRow
	
	mov ax, 13
	push ax
	mov di, RowSP12
	push di
	call print_onNthRow
	
	mov ax, 14
	push ax
	mov di, RowSP11
	push di
	call print_onNthRow
	
	mov ax, 15
	push ax
	mov di, RowSP10
	push di
	call print_onNthRow
	
	mov ax, 16
	push ax
	mov di, RowSP9
	push di
	call print_onNthRow
	
	mov ax, 17
	push ax
	mov di, RowSP8
	push di
	call print_onNthRow
	
	mov ax, 18
	push ax
	mov di, RowSP7
	push di
	call print_onNthRow
	
	mov ax, 19
	push ax
	mov di, RowSP6
	push di
	call print_onNthRow
	
	mov ax, 20
	push ax
	mov di, RowSP5
	push di
	call print_onNthRow
	
	mov ax, 21
	push ax
	mov di, RowSP4
	push di
	call print_onNthRow
	
	mov ax, 22
	push ax
	mov di, RowSP3
	push di
	call print_onNthRow
	
	mov ax, 23
	push ax
	mov di, RowSP2
	push di
	call print_onNthRow
	
	mov ax, 24
	push ax
	mov di, RowSP1
	push di
	call print_onNthRow
	
	push 0
	mov ax, 10
	push ax
	mov ax, 6
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Game_string_len]
	push bx
	mov bx, Game_string
	push bx
	mov bx, [Game_string_atrb]
	push bx
	push dx
	call print_string
	
	
	push 0
	mov ax, 12
	push ax
	mov ax, 10
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Play_string_len]
	push bx
	mov bx, Play_string
	push bx
	mov bx, [Play_string_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 12
	push ax
	mov ax, 14
	push ax
	call get_pixel
	pop dx
	
	mov bx, [Escape_string_len]
	push bx
	mov bx, Escape_string
	push bx
	mov bx, [Escape_string_atrb]
	push bx
	push dx
	call print_string
	
	
	pop dx
	pop bx
	pop di
	pop ax
	pop bp
	ret
	
;will be used to develop end / game-over page
end_page:
	push bp
	mov bp, sp
	push ax
	push di
	push bx
	push dx
	
	mov ax, 0
	push ax
	mov di, RowSP25
	push di
	call print_onNthRow
	
	mov ax, 1
	push ax
	mov di, RowSP24
	push di
	call print_onNthRow
	
	mov ax, 2
	push ax
	mov di, RowSP23
	push di
	call print_onNthRow
	
	mov ax, 3
	push ax
	mov di, RowSP22
	push di
	call print_onNthRow
	
	mov ax, 4
	push ax
	mov di, RowSP21
	push di
	call print_onNthRow
	
	mov ax, 5
	push ax
	mov di, RowSP20
	push di
	call print_onNthRow
	
	mov ax, 6
	push ax
	mov di, RowSP19
	push di
	call print_onNthRow
	
	mov ax, 7
	push ax
	mov di, RowSP18
	push di
	call print_onNthRow
	
	mov ax, 8
	push ax
	mov di, RowSP17
	push di
	call print_onNthRow
	
	mov ax, 9
	push ax
	mov di, RowSP16
	push di
	call print_onNthRow
	
	mov ax, 10
	push ax
	mov di, RowSP15
	push di
	call print_onNthRow
	
	mov ax, 11
	push ax
	mov di, RowSP14
	push di
	call print_onNthRow
	
	mov ax, 12
	push ax
	mov di, RowSP13
	push di
	call print_onNthRow
	
	mov ax, 13
	push ax
	mov di, RowSP12
	push di
	call print_onNthRow
	
	mov ax, 14
	push ax
	mov di, RowSP11
	push di
	call print_onNthRow
	
	mov ax, 15
	push ax
	mov di, RowSP10
	push di
	call print_onNthRow
	
	mov ax, 16
	push ax
	mov di, RowSP9
	push di
	call print_onNthRow
	
	mov ax, 17
	push ax
	mov di, RowSP8
	push di
	call print_onNthRow
	
	mov ax, 18
	push ax
	mov di, RowSP7
	push di
	call print_onNthRow
	
	mov ax, 19
	push ax
	mov di, RowSP6
	push di
	call print_onNthRow
	
	mov ax, 20
	push ax
	mov di, RowSP5
	push di
	call print_onNthRow
	
	mov ax, 21
	push ax
	mov di, RowSP4
	push di
	call print_onNthRow
	
	mov ax, 22
	push ax
	mov di, RowSP3
	push di
	call print_onNthRow
	
	mov ax, 23
	push ax
	mov di, RowSP2
	push di
	call print_onNthRow
	
	mov ax, 24
	push ax
	mov di, RowSP1
	push di
	call print_onNthRow
	
	push 0
	mov ax, 10
	push ax
	mov ax, 6
	push ax
	call get_pixel
	pop dx
	
	mov bx, [End_string_len]
	push bx
	mov bx, End_string
	push bx
	mov bx, [End_string_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 8
	push ax
	mov ax, 10
	push ax
	call get_pixel
	pop dx
	
	mov bx, [ShowScore_string_len]
	push bx
	mov bx, ShowScore_string
	push bx
	mov bx, [ShowScore_string_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 8
	push ax
	mov ax, 11
	push ax
	call get_pixel
	pop dx
	mov ax, [totalscore]
	push ax
	push dx
	call print_number
	
	push 0
	mov ax, 8
	push ax
	mov ax, 15
	push ax
	call get_pixel
	pop dx
	
	mov bx, [PlayA_string_len]
	push bx
	mov bx, PlayA_string
	push bx
	mov bx, [PlayA_string_atrb]
	push bx
	push dx
	call print_string
	
	push 0
	mov ax, 8
	push ax
	mov ax, 18
	push ax
	call get_pixel
	pop dx
	
	mov bx, [EscapeT_string_len]
	push bx
	mov bx, EscapeT_string
	push bx
	mov bx, [EscapeT_string_atrb]
	push bx
	push dx
	call print_string
	
	
	pop dx
	pop bx
	pop di
	pop ax
	pop bp
	ret	

;will be used to print STRINGS
print_string: ;string length@ 10 string address@ 8, string attribute@ 6, string position@ 4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push si
	push di

	mov ax, 0xb800
	mov es, ax
	
	mov si, [bp+8]
	mov di, [bp+4]
	mov ah, [bp+6]
	mov cx, [bp+10]
	
	print_string_loop:
		mov al,[si];
		mov word[es:di],ax;
		add di,2;
		add si,1;
		loop print_string_loop;
	
	pop di
	pop si
	pop cx
	pop bx
	pop ax;
	pop es
	pop bp
	ret 8;
	
;will be used to print all pixels on Nth Row of Display
print_onNthRow: ;push row to print on@6, push address of row @4

    push bp
	mov bp, sp
	push ds
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	push si

	mov bx, [bp+4]
	mov dx, [bp+6]
	mov ax, 0
		
		print_row_pixelsx:
		mov cx, [bx]
		cmp cx, -1
		je cont_1_print_rowsx
			add bx, 2
			print_multiple_timesx:
				push 0
				push ax
				push dx
				call get_pixel
				pop si
				mov di, 0xDB
				push di
				mov di, [bx]
				push di
				push si
				add ax, 1
				call print_atpexel
				loop print_multiple_timesx
			add bx, 2
		jmp print_row_pixelsx
	
	cont_1_print_rowsx:
	pop si
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop ds
	pop bp
	ret 4

;will be used to alter the ROAD CORNERS (this will help in restricting player movement)
reset_road_corners:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	;check if the road corners are to be enabled for reset
	mov ax, [check_1_roadcorner]
	cmp ax, 1
	je do_setting
	jmp reset_road_corners_exit
	
	;in tilted road there still is some room for straight part. check if that part is traversed or not
	do_setting:
	mov dx, [counter_reset_stage]
	cmp dx,0
	je start_setting
	
	;if straight part is not traversed then decrement the counter that keeps check of traversed path
	sub dx, 1
	mov word [counter_reset_stage], dx
	jmp reset_road_corners_exit
	
	;if traversed then for tilted path, start changing the road corners
	start_setting:
	mov bx, [counter_correction_stage]
	step_8rc:
	cmp bx, 8
	jne step_7rc
	mov word[road_corners+2], 31
	mov word [counter_correction_stage], 7
	jmp reset_road_corners_exit
	step_7rc:
	cmp bx, 7
	jne step_6rc
	mov word[road_corners], 21
	mov word [counter_correction_stage], 6
	jmp reset_road_corners_exit
	step_6rc:
	cmp bx, 6
	jne step_5rc
	mov word[road_corners+2], 29
	mov word [counter_correction_stage], 5
	jmp reset_road_corners_exit
	step_5rc:
	cmp bx, 5
	jne step_4rc
	mov word[road_corners], 19
	mov word [counter_correction_stage], 4
	jmp reset_road_corners_exit
	step_4rc:
	cmp bx, 4
	jne step_3rc
	mov word[road_corners+2], 27
	mov word [counter_correction_stage], 3
	jmp reset_road_corners_exit
	step_3rc:
	cmp bx, 3
	jne step_2rc
	mov word[road_corners], 17
	mov word [counter_correction_stage], 2
	jmp reset_road_corners_exit
	step_2rc:
	cmp bx, 2
	jne step_1rc
	mov word[road_corners+2], 26
	mov word [counter_correction_stage], 1
	jmp reset_road_corners_exit
	step_1rc:
	cmp bx, 1
	jne reset_road_corners_exit
	mov word[road_corners], 16
	mov word [counter_correction_stage], 8 ;reset the counter for shifting road corners in tilted path
	mov word [check_1_roadcorner], 0 ;reset the check for disabling the reset
	mov word [counter_reset_stage], 14 ;reset the check for straight path
	jmp reset_road_corners_exit
	reset_road_corners_exit:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret


;will be used to randomize the cols of spikes on road
randomize_hurdle:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	randomize_hurdle_loop:
		push 0
		mov ax, 8
		push ax
		call RANDNUM
		pop ax
		mov dx, [apparent_road_corners]
		add ax, dx
		mov bx, [carD_col]
		cmp ax, bx
		jne check_hurdle1
		jmp randomize_hurdle_loop
	check_hurdle1:
		add bx, 1
		cmp ax, bx
		jne check_hurdle2
		jmp randomize_hurdle_loop
	check_hurdle2:
		add bx, 1
		cmp ax, bx
		je randomize_hurdle_loop
	mov [hurdle_col], ax
	add ax, 1
	mov [hurdle_col+2], ax
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret
	
;will be used to randomize the cols of bonus car on road
randomize_bonus_car:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	
		push 0
		mov ax, 8
		push ax
		call RANDNUM
		pop ax
		mov dx, [apparent_road_corners]
		add ax, dx
		
		
	mov [carB_col], ax
	add ax, 1
	mov [carB_col+2], ax
	add ax, 1 
	mov [carB_col+4], ax
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret
;will be used to randomize the cols of danger car on road
randomize_danger_car:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	push 0
	mov ax, 8
	push ax
	call RANDNUM
	pop ax
	mov dx, [apparent_road_corners]
	add ax, dx
	mov [carD_col], ax
	add ax, 1
	mov [carD_col+2], ax
	add ax, 1 
	mov [carD_col+4], ax
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret
;will be used to randomize the cols of 2nd danger car on road
randomize_danger_car2:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	push 0
	mov ax, 8
	push ax
	call RANDNUM
	pop ax
	mov dx, [apparent_road_corners]
	add ax, dx
	mov [carD2_col], ax
	add ax, 1
	mov [carD2_col+2], ax
	add ax, 1 
	mov [carD2_col+4], ax
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret

;will be used to generate random numbers
RANDNUM:
; a function to generate random number  in range [0-n]
; it used seed variable 
; you can change the values for same seed same random numbers will be generated 
; syntax to use
; push 0; make space for o/p
; push n ; that max of range
; call RANDNUM

   push bp
   mov bp,sp
   push ax
   push cx
   push dx
   push bx
   
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      
   mov  ax, dx
   mov bx, 25173          
   mul bx
   add ax, 13849                    
   xor  dx, dx
   mov  cx, [bp+4]
   shr  ax,5 
   inc cx   
   div  cx
   mov [bp+6], dx
   pop bx
   pop dx
   pop cx
   pop ax
   pop bp   
   ret 2

;altering isr for start screen
kbisr2:
	push ax
	push es
	mov ax, 0xb800
	mov es, ax 
	in al, 0x60 
		cmp al, 25 ; is the key P
		jne nextcmpx 
		mov byte[bool_start_status],1
	jmp nomatchx 
	nextcmpx: 
		cmp al, 1 ; is the key Esc
		jne nomatchx 
		mov byte[bool_start_status],2
	nomatchx: 
	pop es
	pop ax
	jmp far [cs:oldisr]
	
;altering isr for end screen
kbisr3:
	push ax
	push es
	mov ax, 0xb800
	mov es, ax 
	in al, 0x60 
		cmp al, 25 ; is the key P
		jne nextcmpy 
		mov byte[bool_end_status],1
	jmp nomatchy 
	nextcmpy: 
		cmp al, 1 ; is the key Esc
		jne nomatchy 
		mov byte[bool_end_status],2
	nomatchy: 
	pop es
	pop ax
	jmp far [cs:oldisr]
;altering isr for game
kbisr:
	push ax
	push es
	mov ax, 0xb800
	mov es, ax 
	in al, 0x60 
		cmp al, 0x4B; 30 ; is the key left
		jne nextcmp 
		call mov_left
	jmp nomatch 
	nextcmp: 
		cmp al, 0x4D; 32 ; is the key right
		jne nextcmp1 
		call mov_right 
	jmp nomatch
	nextcmp1: 
		cmp al, 0x48; 32 ; is the key right
		jne nextcmp2
		call speed_up 
	jmp nomatch
	nextcmp2: 
		cmp al, 0x50; 32 ; is the key right
		jne nomatch 
		call speed_down
	
	nomatch: 
	pop es
	pop ax
	jmp far [cs:oldisr]

;movement of car on left key
mov_left:

	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	mov ax, [car_col]
	mov cx, [road_corners]
    cmp cx, ax
	jb can_mov_left
	jmp cannot_mov_left
	can_mov_left:
 ;get cordinates for car last col
	
	mov ax, 0xb800
	mov es, ax 
	
	push 0
	mov ax, [car_col+4]
	push ax
	mov ax, [car_row]
	push ax
	call get_pixel
	pop di
	;print the backgroundin last colomn
	mov ax, [car_1strow+4]
	mov word [es:di], ax
	add di, 160
	mov ax, [car_2ndrow+4]
	mov word [es:di], ax
	add di, 160
	mov ax, [car_3rdrow+4]
	mov word [es:di], ax
	
	; reset(shifting col to right colomn) background of car
	
	mov ax, [car_1strow+2]
	mov word [car_1strow+4], ax
	mov ax, [car_2ndrow+2]
	mov word [car_2ndrow+4], ax
	mov ax, [car_3rdrow+2]
	mov word [car_3rdrow+4], ax
	
	mov ax, [car_1strow]
	mov word [car_1strow+2], ax
	mov ax, [car_2ndrow]
	mov word [car_2ndrow+2], ax
	mov ax, [car_3rdrow]
	mov word [car_3rdrow+2], ax
	
	;reset 1st col of background by copying it from display
	
	push 0
	mov ax, [car_col]
	sub ax, 1
	push ax
	mov ax, [car_row]
	push ax
	call get_pixel
	pop di
	
	mov ax, word [es:di]
	mov [car_1strow], ax
	add di, 160
	mov ax, word [es:di]
	mov [car_2ndrow], ax
	add di, 160
	mov ax, word [es:di]
	mov [car_3rdrow], ax
	
	;change cordinates of car
	mov bx, car_col
	mov ax, [car_col]
	sub ax, 1
	mov [car_col], ax
	mov ax, [car_col+2]
	sub ax, 1
	mov [car_col+2], ax
	mov ax, [car_col+4]
	sub ax, 1
	mov [car_col+4], ax
	
	push car_col
	push car_row
	call car_p1_withoutbg
	
	cannot_mov_left:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret
;movement of car on right key
mov_right:

	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
		
	mov ax, [car_col+4]
	mov cx, [road_corners+2]
    cmp cx, ax
	ja can_mov_right
	jmp cannot_mov_right
	can_mov_right:
	
	mov ax, 0xb800
	mov es, ax 
	
 ;get cordinates for car last col
 
 
	push 0
	mov ax, [car_col]
	push ax
	mov ax, [car_row]
	push ax
	call get_pixel
	pop di
	;print the backgroundin last colomn
	mov ax, [car_1strow]
	mov word [es:di], ax
	add di, 160
	mov ax, [car_2ndrow]
	mov word [es:di], ax
	add di, 160
	mov ax, [car_3rdrow]
	mov word [es:di], ax
	
	; reset(shifting col to right colomn) background of car
	
	mov ax, [car_1strow+2]
	mov word [car_1strow], ax
	mov ax, [car_2ndrow+2]
	mov word [car_2ndrow], ax
	mov ax, [car_3rdrow+2]
	mov word [car_3rdrow], ax
	
	mov ax, [car_1strow+4]
	mov word [car_1strow+2], ax
	mov ax, [car_2ndrow+4]
	mov word [car_2ndrow+2], ax
	mov ax, [car_3rdrow+4]
	mov word [car_3rdrow+2], ax
	
	;reset lasr col of background by copying it from display
	
	push 0
	mov ax, [car_col+4]
	add ax, 1
	push ax
	mov ax, [car_row]
	push ax
	call get_pixel
	pop di
	
	mov ax, word [es:di]
	mov [car_1strow+4], ax
	add di, 160
	mov ax, word [es:di]
	mov [car_2ndrow+4], ax
	add di, 160
	mov ax, word [es:di]
	mov [car_3rdrow+4], ax
	
	;change cordinates of car
	mov bx, car_col
	mov ax, [car_col]
	add ax, 1
	mov [car_col], ax
	mov ax, [car_col+2]
	add ax, 1
	mov [car_col+2], ax
	mov ax, [car_col+4]
	add ax, 1
	mov [car_col+4], ax
	
	push car_col
	push car_row
	call car_p1_withoutbg
	
	cannot_mov_right:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret
	
speed_up:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	mov ax, [car_speed]
	cmp ax, 1
	ja allow_speed_up
	jmp speed_up_end
	
	allow_speed_up:
	sub ax, 1
	mov [car_speed], ax
	
	speed_up_end:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret

speed_down:
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	
	mov ax, [car_speed]
	cmp ax, 4
	jb allow_speed_down
	jmp speed_down_end
	
	allow_speed_down:
	add ax, 1
	mov [car_speed], ax
	
	speed_down_end:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	
	ret

;save the display on which the player car is residing (road attributes)
save_carplayerbg: ;push Position_onMemory (1,2,3,4,5,6,7,8,9)@6  push Position_onDisplay@4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	mov ax, 0xb800
	mov es, ax 
	mov di, [bp+4] 
	mov ax, word [es:di] ; ax has the block
    mov cx, [bp+6]
	cmp cx, 1
	je one
	cmp cx, 2
	je two
	cmp cx, 3
	je three
	cmp cx, 4
	je four
	cmp cx, 5
	je five
	cmp cx, 6
	je six
	cmp cx, 7
	je seven
	cmp cx, 8
	je eight
	cmp cx, 9
	je nine
	jmp end_savecarbg
	one:
	mov [car_1strow], ax
	jmp end_savecarbg
	two:
	mov [car_1strow+2], ax
	jmp end_savecarbg
	three:
	mov [car_1strow+4], ax
	jmp end_savecarbg
	four:
	mov [car_2ndrow], ax
	jmp end_savecarbg
	five:
	mov [car_2ndrow+2], ax
	jmp end_savecarbg
	six:
	mov [car_2ndrow+4], ax
	jmp end_savecarbg
	seven:
	mov [car_3rdrow], ax
	jmp end_savecarbg
	eight:
	mov [car_3rdrow+2], ax
	jmp end_savecarbg
	nine:
	mov [car_3rdrow+4], ax
	jmp end_savecarbg
	end_savecarbg:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 4
;save the display on which the danger car is residing (road attributes)
save_cardplayerbg: ;push Position_onMemory (1,2,3,4,5,6,7,8,9)@6  push Position_onDisplay@4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	mov ax, 0xb800
	mov es, ax 
	mov di, [bp+4] 
	mov ax, word [es:di] ; ax has the block
    mov cx, [bp+6]
	cmp cx, 1
	je oned
	cmp cx, 2
	je twod
	cmp cx, 3
	je threed
	cmp cx, 4
	je fourd
	cmp cx, 5
	je fived
	cmp cx, 6
	je sixd
	cmp cx, 7
	je sevend
	cmp cx, 8
	je eightd
	cmp cx, 9
	je nined
	jmp end_savecardbg
	oned:
	mov [card_1strow], ax
	jmp end_savecardbg
	twod:
	mov [card_1strow+2], ax
	jmp end_savecardbg
	threed:
	mov [card_1strow+4], ax
	jmp end_savecardbg
	fourd:
	mov [card_2ndrow], ax
	jmp end_savecardbg
	fived:
	mov [card_2ndrow+2], ax
	jmp end_savecardbg
	sixd:
	mov [card_2ndrow+4], ax
	jmp end_savecardbg
	sevend:
	mov [card_3rdrow], ax
	jmp end_savecardbg
	eightd:
	mov [card_3rdrow+2], ax
	jmp end_savecardbg
	nined:
	mov [card_3rdrow+4], ax
	jmp end_savecardbg
	end_savecardbg:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 4
	;save the display on which the 2nd danger car is residing (road attributes)
save_cardplayerbg2: ;push Position_onMemory (1,2,3,4,5,6,7,8,9)@6  push Position_onDisplay@4
	push bp
	mov bp, sp
	push es
	push ax
	push bx
	push cx
	push di
	mov ax, 0xb800
	mov es, ax 
	mov di, [bp+4] 
	mov ax, word [es:di] ; ax has the block
    mov cx, [bp+6]
	cmp cx, 1
	je oned2
	cmp cx, 2
	je twod2
	cmp cx, 3
	je threed2
	cmp cx, 4
	je fourd2
	cmp cx, 5
	je fived2
	cmp cx, 6
	je sixd2
	cmp cx, 7
	je sevend2
	cmp cx, 8
	je eightd2
	cmp cx, 9
	je nined2
	jmp end_savecardbg2
	oned2:
	mov [card2_1strow], ax
	jmp end_savecardbg2
	twod2:
	mov [card2_1strow+2], ax
	jmp end_savecardbg2
	threed2:
	mov [card2_1strow+4], ax
	jmp end_savecardbg2
	fourd2:
	mov [card2_2ndrow], ax
	jmp end_savecardbg2
	fived2:
	mov [card2_2ndrow+2], ax
	jmp end_savecardbg2
	sixd2:
	mov [card2_2ndrow+4], ax
	jmp end_savecardbg2
	sevend2:
	mov [card2_3rdrow], ax
	jmp end_savecardbg2
	eightd2:
	mov [card2_3rdrow+2], ax
	jmp end_savecardbg2
	nined2:
	mov [card2_3rdrow+4], ax
	jmp end_savecardbg2
	end_savecardbg2:
	pop di
	pop cx
	pop bx
	pop ax
	pop es
	pop bp
	ret 4
;will be used to print something at a given pixel 
print_atpexel: ;push ASCII@8, push Attribute@6, push Position@4
	push bp
	mov bp, sp
	push es
	push ax
	push di
	mov ax, 0xb800
	mov es, ax 
	mov ah, [bp+6]
	mov al, [bp+8]
	mov di, [bp+4] 
	mov word [es:di], ax 
	pop di
	pop ax
	pop es
	pop bp
	ret 6
;will be used to print spikes
Hurdles: ;@push hurdle_col@6, hurdle_row@4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
    mov di, 0
	hurd_l1:
	;push ASCII@8, push Attribute@6, push Position@4
	mov bx, [bp+4]
	mov ax, [bx+di]
	cmp ax, -1
	je cont_hurd
	mov si, 0xB2
	push si; ascii
	mov si, 70h
	push si; attribute
	
	push 0 ; calling get_pixel
	mov bx, [bp+6]
	mov si, [bx+di]
	push si; col
	mov bx, [bp+4]
	mov si, [bx+di]
	push si; row
	call get_pixel
	pop bx
	
	push bx
	call print_atpexel
	add di, 2
	jmp hurd_l1

	cont_hurd:
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4
;will be used to print box on pixel (ascii 0xDB)
printBox_atpexel: ;push pexel@4
	push bp
	mov bp, sp
	push es
	push ax
	push di
	mov ax, 0xb800
	mov es, ax 
	mov ah, 0xf
	mov al, 0xDB
	mov di, [bp+4] 
	mov word [es:di], ax 
	pop di
	pop ax
	pop es
	pop bp
	ret 2

;to get position of pixel 
get_pixel:  ; input are col row
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	
	mov ax, [bp+4]
	mov cx, 80 
	mul word cx
	mov bx, 0
	mov bx, [bp+6]
	add ax, bx 	
	shl ax, 1
	
	mov [bp+8], ax

	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	
	ret 4
;clear screen 
clrscr:
	push es
	push ax
	push di
	mov ax, 0xb800
	mov es, ax 
	mov di, 0 
	nextloc
	mov word [es:di], 0x0720 
	add di, 2 
	cmp di, 4000 
	jne nextloc 
	pop di
	pop ax
	pop es
	ret
	
;add delay 
delay:
	push cx
	mov cx, [car_speed]; change the values  to increase delay time
	delay_loop1:
	push cx
	mov cx, 0xFFFF
	delay_loop2:
	loop delay_loop2
	pop cx
	loop delay_loop1
	pop cx
	ret
;print a rectangle given top,left and bottom right postion with attributes given
print_rec: ;push attribute@12 top_left_col@10, top_left_row@8, bottom_right_col@6, bottom_right_row@4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx

	mov ax, 0xb800
	mov es, ax
	
	mov bx,  [bp+10]
	push 0
	push bx; col left top
	mov bx, [bp+8]
	push bx;  row left top
	
	call get_pixel
	pop bx ;top left pexel
	
	mov cx, [bp+6] ;right col
	sub cx, [bp+10] ; right col -left col
	mov di, bx 
      
	mov dx, [bp+4] ;right row
	sub dx, [bp+8] ; right row -left row
	cmp dx, 0
	je horizontal_line_case      
	cmp cx, 0
	je vertical_line_case
	vertical:
	push cx
		horizontal:
		push dx
		mov dx, [bp+12]
		mov ah, dl 
		mov al, 0xDB
		mov [es:di], ax 
		add di, 2 
		sub cx, 1
		pop dx
		cmp cx, 0
		ja horizontal
	pop cx
	add bx, 160
	mov di, bx
	sub dx, 1
	cmp dx, 0
	ja vertical
	jmp cont_print_rec

	vertical_line_case:
	
	mov cx, 1
		horizontal_var1:
		push dx
		mov dx, [bp+12]
		mov ah, dl 
		mov al, 0xDB
		mov [es:di], ax 
		add di, 2 
		sub cx, 1
		pop dx
		cmp cx, 0
		ja horizontal_var1
	add bx, 160
	mov di, bx
	sub dx, 1
	cmp dx, 0
	ja vertical_line_case
	jmp cont_print_rec

	horizontal_line_case:
	mov dx, 1
	push cx
		horizontal_var2:
		push dx
		mov dx, [bp+12]
		mov ah, dl 
		mov al, 0xDB
		mov [es:di], ax 
		add di, 2 
		sub cx, 1
		pop dx
		cmp cx, 0
		ja horizontal_var2
	pop cx
	add bx, 160
	mov di, bx
	sub dx, 1
	cmp dx, 0
	ja horizontal_line_case
	jmp cont_print_rec

	cont_print_rec:
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 10


;print the background1 (straight road)
background_1:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0
	
	mov ax, 0
	push ax
	mov di, Rowbg_1
	push di
	call print_onNthRow
	
	mov ax, 1
	push ax
	mov di, Rowbg_2
	push di
	call print_onNthRow
	
	mov ax, 2
	push ax
	mov di, Rowbg_3
	push di
	call print_onNthRow
	
	mov ax, 3
	push ax
	mov di, Rowbg_4
	push di
	call print_onNthRow
	
	mov ax, 4
	push ax
	mov di, Rowbg_5
	push di
	call print_onNthRow
	
	mov ax, 5
	push ax
	mov di, Rowbg_6
	push di
	call print_onNthRow
	
	mov ax, 6
	push ax
	mov di, Rowbg_7
	push di
	call print_onNthRow
	
	mov ax, 7
	push ax
	mov di, Rowbg_8
	push di
	call print_onNthRow
	
	mov ax, 8
	push ax
	mov di, Rowbg_9
	push di
	call print_onNthRow
	
	mov ax, 9
	push ax
	mov di, Rowbg_10
	push di
	call print_onNthRow
	
	mov ax, 10
	push ax
	mov di, Rowbg_11
	push di
	call print_onNthRow
	
	mov ax, 11
	push ax
	mov di, Rowbg_12
	push di
	call print_onNthRow
	
	mov ax, 12
	push ax
	mov di, Rowbg_13
	push di
	call print_onNthRow
	
	mov ax, 13
	push ax
	mov di, Rowbg_14
	push di
	call print_onNthRow
	
	mov ax, 14
	push ax
	mov di, Rowbg_15
	push di
	call print_onNthRow
	
	mov ax, 15
	push ax
	mov di, Rowbg_16
	push di
	call print_onNthRow
	
	mov ax, 16
	push ax
	mov di, Rowbg_17
	push di
	call print_onNthRow
	
	mov ax, 17
	push ax
	mov di, Rowbg_18
	push di
	call print_onNthRow
	
	mov ax, 18
	push ax
	mov di, Rowbg_19
	push di
	call print_onNthRow
	
	mov ax, 19
	push ax
	mov di, Rowbg_20
	push di
	call print_onNthRow
	
	mov ax, 20
	push ax
	mov di, Rowbg_21
	push di
	call print_onNthRow
	
	mov ax, 21
	push ax
	mov di, Rowbg_22
	push di
	call print_onNthRow
	
	mov ax, 22
	push ax
	mov di, Rowbg_23
	push di
	call print_onNthRow
	
	mov ax, 23
	push ax
	mov di, Rowbg_24
	push di
	call print_onNthRow
	
	mov ax, 24
	push ax
	mov di, Rowbg_25
	push di
	call print_onNthRow

	
	cont_bg:
	mov ax, 0
	push 0
	mov ax, 46
	push ax
	mov ax , 5
	push ax
	call get_pixel
	pop ax
	mov bx, [score_len]
	push bx
	mov bx, score
	push bx
	mov bx, [score_atrb]
	push bx
	push ax
	call print_string
	
	mov ax, 0
	push 0
	mov ax, 46
	push ax
	mov ax , 8
	push ax
	call get_pixel
	pop ax
	mov bx, [fuel_len]
	push bx
	mov bx, fuel
	push bx
	mov bx, [fuel_atrb]
	push bx
	push ax
	call print_string
	
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 
	
;print player car
car_p1: ;push car_col@6, cor_row@4


	
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0

    ;tyre 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx]; second row
	push si
	call get_pixel
	pop bx
	mov ax, 1
	push ax
	push bx
	call save_carplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	;body 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx] ;second row
	push si
	call get_pixel
	pop bx
	mov ax, 2
	push ax
	push bx
	call save_carplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0101b
	push ax
	push bx
	call print_atpexel
	

    ;tyre2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx] ; second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 3
	push ax
	push bx
	call save_carplayerbg
	mov ax, 0x11
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	
	;side_one
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 4
	push ax
	push bx
	call save_carplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	
	;body 2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+2] ; third row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 5
	push ax
	push bx
	call save_carplayerbg
	mov ax, 0xB2
	push ax
	mov ax, 1100100b
	push ax
	push bx
	call print_atpexel
	
	
	;side_two
		
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 6
	push ax
	push bx
	call save_carplayerbg
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+4]; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 7
	push ax
	push bx
	call save_carplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	;body 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx+4] ;fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 8
	push ax
	push bx
	call save_carplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDF
	push ax
	mov ax, 1110110b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre4
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+4] ; fourth row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 9
	push ax
	push bx
	call save_carplayerbg
	mov ax, 0x11
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel

	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4

;print player car without saving the display on which it is printed
car_p1_withoutbg:

push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0

    ;tyre 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx]; second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	;body 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx] ;second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0101b
	push ax
	push bx
	call print_atpexel
	

    ;tyre2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx] ; second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	
	;side_one
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	
	;body 2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+2] ; third row
	push si
	call get_pixel
	pop bx
	mov ax, 0xB2
	push ax
	mov ax, 1100100b
	push ax
	push bx
	call print_atpexel
	
	
	;side_two
		
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+4]; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 0x10
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel
	
	;body 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx+4] ;fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 0xDF
	push ax
	mov ax, 1110110b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre4
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+4] ; fourth row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 0x71
	push ax
	push bx
	call print_atpexel

	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4

;print danger car
car_D: ;push car_col@6, cor_row@4


	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0

    ;tyre 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx]; second row
	push si
	call get_pixel
	pop bx
	mov ax, 1
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;body 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx] ;second row
	push si
	call get_pixel
	pop bx
	mov ax, 2
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, [carD_color]
	push ax
	push bx
	call print_atpexel

    ;tyre2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx] ; second row
	push si
	call get_pixel
	pop bx
	mov ax, 3
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;side_one
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 4
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	;body 2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+2] ; third row
	push si
	call get_pixel
	pop bx
	mov ax, 5
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xB2
	push ax
	mov ax, 0100b
	push ax
	push bx
	call print_atpexel
	
	;side_two
	
	
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 6
	push ax
	push bx
	call save_cardplayerbg
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+4]; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 7
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;body 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx+4] ;fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 8
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDF
	push ax
	mov ax, [carD_color]
	push ax
	push bx
	call print_atpexel
	
	 ;tyre4
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+4] ; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 9
	push ax
	push bx
	call save_cardplayerbg
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel

	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4
	
;print second danger car
car_D2: ;push car_col@6, cor_row@4


	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0

    ;tyre 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx]; second row
	push si
	call get_pixel
	pop bx
	mov ax, 1
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;body 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx] ;second row
	push si
	call get_pixel
	pop bx
	mov ax, 2
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, [carD2_color]
	push ax
	push bx
	call print_atpexel

    ;tyre2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx] ; second row
	push si
	call get_pixel
	pop bx
	mov ax, 3
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;side_one
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 4
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	;body 2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+2] ; third row
	push si
	call get_pixel
	pop bx
	mov ax, 5
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xB2
	push ax
	mov ax, 0100b
	push ax
	push bx
	call print_atpexel
	
	;side_two
	
	
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 6
	push ax
	push bx
	call save_cardplayerbg2
		;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+4]; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 7
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel
	
	;body 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx+4] ;fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 8
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDF
	push ax
	mov ax, [carD2_color]
	push ax
	push bx
	call print_atpexel
	
	 ;tyre4
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+4] ; fourth row
	push si
	call get_pixel
	pop bx
	mov ax, 9
	push ax
	push bx
	call save_cardplayerbg2
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 1110100b
	push ax
	push bx
	call print_atpexel

	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4

;print bonus car	
car_B: ;push car_col@6, cor_row@4


	;car_col: dw 24,25,26
    ;car_row  dw 21,22,23,24
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	mov di, 0

    ;tyre 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx]; second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 11111100b
	push ax
	push bx
	call print_atpexel
	
	;body 1
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx] ;second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDB
	push ax
	mov ax, 11111111b
	push ax
	push bx
	call print_atpexel

    ;tyre2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx] ; second row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 11111110b
	push ax
	push bx
	call print_atpexel
	
	;side_one
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	;body 2
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+2] ; third row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xB2
	push ax
	mov ax, 11111111b
	push ax
	push bx
	call print_atpexel
	
	;side_two
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+2]; third row
	push si
	call get_pixel
	pop bx
	mov ax, 0xDB
	push ax
	mov ax, 0111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx] ;left col
	push si
	mov bx, [bp+4]; row
	mov si, [bx+4]; fourth row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x10
	push ax
	mov ax, 11110101b
	push ax
	push bx
	call print_atpexel
	
	;body 3
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+2] ;mid col
	push si
	mov bx, [bp+4] ;row
	mov si, [bx+4] ;fourth row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0xDF
	push ax
	mov ax, 11111111b
	push ax
	push bx
	call print_atpexel
	
	 ;tyre4
	push 0
	mov bx, [bp+6] ;col
	mov si, [bx+4] ;right col
	push si
	mov bx, [bp+4] ; row
	mov si, [bx+4] ; fourth row
	push si
	call get_pixel
	pop bx
	;push ASCII@8, push Attribute@6, push Position@4
	mov ax, 0x11
	push ax
	mov ax, 11111100b
	push ax
	push bx
	call print_atpexel

	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 4

;compare the given pexel with the pixels residing just above the pixels of car
compare_prevCarPexel:

	push bp
	mov bp, sp
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	
	mov dx, [bp+4]
    add dx, 160
	mov di, 0
	
	loopP_Rfind:
	mov bx, car_row
	mov si, [bx+di]
	add di, 2
	mov bx, car_col
	cmp si, -1
	je notP_foundCarPexel
		loopP_Cfind:
		mov cx, [bx]
		cmp cx, -1
		je loopP_Rfind
		push 0
		push cx
		add bx , 2
		push si
		call get_pixel
		pop ax
		cmp ax, dx
		je foundP_carPexel
		jmp loopP_Cfind
	
	foundP_carPexel: ; Curr pexel matches with car
	mov ax, 1
	mov [bp+6], ax
	jmp retP_cmpcarPex
	
	notP_foundCarPexel: ; Curr pexel does not matches with car
	mov ax, 0
	mov [bp+6], ax
	jmp retP_cmpcarPex
	
	retP_cmpcarPex:
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop bp
	ret 2


;compare the given pixel with the pixels of car
comapare_carPexel:;output@8, initial pexel at row@6, initial col no@4
	push bp
	mov bp, sp
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	
	mov dx, [bp+4]
	; dx has current pexel
	mov di, 0
	
	loop_Rfind:
	mov bx, car_row
	mov si, [bx+di]
	add di, 2
	mov bx, car_col
	cmp si, -1
	je not_foundCarPexel
		loop_Cfind:
		mov cx, [bx]
		cmp cx, -1
		je loop_Rfind
		push 0
		push cx
		add bx , 2
		push si
		call get_pixel
		pop ax
		cmp ax, dx
		je found_carPexel
		jmp loop_Cfind
	
	found_carPexel: ; Curr pexel matches with car
	mov ax, 1
	mov [bp+6], ax
	jmp ret_cmpcarPex
	
	not_foundCarPexel: ; Curr pexel does not matches with car
	mov ax, 0
	mov [bp+6], ax
	jmp ret_cmpcarPex
	
	ret_cmpcarPex:
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop bp
	ret 2

;print all cols on FIRST row of display 
print_onFRow: ;push address of row @4

    push bp
	mov bp, sp
	push ds
	push es
	push ax
	push bx
	push cx
	push dx
	push di
	push si

	mov bx, [bp+4]
	mov dx, 0
	mov ax, 0
		
		print_row_pixels:
		mov cx, [bx]
		cmp cx, -1
		je cont_1_print_rows
			add bx, 2
			print_multiple_times:
			push 0
			push ax
			push dx
			call get_pixel
			pop si
			mov di, 0xDB
			push di
			mov di, [bx]
			push di
			push si
			add ax, 1
			call print_atpexel
			loop print_multiple_times
			add bx, 2
		jmp print_row_pixels
	
	cont_1_print_rows:
	pop si
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop es
	pop ds
	pop bp
	ret 2

;Proceed with the first background (straight road, also include the functionality of rows movement in it) 
event_1_try:

	push bp
	mov bp, sp
	push 0; lv at bp-2
	
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds

	mov dx, 24
	mov si, 3680
	mov di, 3840
	mov ax, 0xb800
	mov bx, ds
	mov ds, ax
	mov es, ax
	
	

	mov_rows:
	mov [bp-2], dx
	
	;compare dx with all the car rows, if not equal simply move all cols; if equal proceed to the cols loop
	mov cx, 3
	mov ds, bx
	push si
	push bx
	push ax
	mov si, [car_row]
	mov dx, [bp-2]
	mov ax, dx
	sub ax, 1
	;for car player
	
	compare_incar:
	;compare with the previous row of car
	 mov bx, [car_row]
	 sub bx, 1
	 cmp ax, bx
	 je compare_in_exit
	;compare with car rows
	 cmp ax, si
	 je compare_in_exit
	 add si, 1
	 loop compare_incar
	
;move entire row
	;pop cx
	pop ax
	pop bx
	pop si
	mov cx, 43
	mov ds, ax
	
	rep movsw
	
	mov dx, [bp-2]
	sub dx, 1
	sub si, 86
	sub di, 86
	sub si, 160
	sub di, 160
	cmp dx, 0
	ja mov_rows	
	jmp after_mov_rows
	
	compare_in_exit:
	;pop cx
	mov cx, 43
	pop ax
	pop bx
	pop si
		
		mov_cols:
		mov ds, bx
		push 0
		push si
		;push cx
		call comapare_carPexel
		pop dx
		mov ds, ax
		cmp dx, 0
		je move_pexel
		add si, 2
		add di, 2
		jmp donot_move
		move_pexel:
			mov ds, bx
			push 0
			push si
			;push cx
			call compare_prevCarPexel
			pop dx
			mov ds, ax
			cmp dx, 0
			je move_pexel2
		
;		;move the current display pixels to the background memory and print the lastrow of background memory and update si/di
		push ax
		push bx
		mov ds, bx
		;print the lastrow of bg
		add di, 480
		mov ax,[car_3rdrow]
		mov word [es:di],ax
		add di, 2
		mov ax,[car_3rdrow+2]
		mov word [es:di],ax
		add di, 2
		mov ax,[car_3rdrow+4]
		mov word [es:di],ax
		sub di, 484
		;update the bg memory
		mov ax,[car_2ndrow]
		mov [car_3rdrow], ax
		mov ax,[car_2ndrow+2]
		mov [car_3rdrow+2], ax
		mov ax,[car_2ndrow+4]
		mov [car_3rdrow+4], ax
		mov ax,[car_1strow]
		mov [car_2ndrow], ax
		mov ax,[car_1strow+2]
		mov [car_2ndrow+2], ax
		mov ax,[car_1strow+4]
		mov [car_2ndrow+4], ax
		;move the currentpexels to background memory
		mov ax,  [es:si]
		mov [car_1strow], ax
		add si, 2
		mov ax,  [es:si]
		mov [car_1strow+2], ax
		add si, 2
		mov ax, [es:si]
		mov [car_1strow+4], ax
		sub si, 4
		add si, 6
		add di, 6
		pop bx
		pop ax
		mov ds, ax
		jmp donot_move
		move_pexel2:
		movsw
		donot_move:
		
		dec cx
		jnz mov_cols
		mov dx, [bp-2]
		sub dx, 1
		sub si, 86
		sub di, 86
		sub si, 160
		sub di, 160
		cmp dx, 0
		ja mov_rows	
		jmp after_mov_rows
	
	after_mov_rows:
	mov ds, bx
	mov bl, [current_rowbg]
	paste_FirstR:
    case1:
	cmp bl, 1
	jne case2
	mov di, Rowbg_25
	push di
	call print_onFRow
	mov byte[current_rowbg], 2 
	jmp case26
	case2:
	cmp bl, 2
	jne case3
	mov di, Rowbg_24
	push di
	call print_onFRow
	mov byte[current_rowbg], 3
	jmp case26
	case3:
	cmp bl, 3
	jne case4
	mov di, Rowbg_23
	push di
	call print_onFRow
	mov byte[current_rowbg], 4
	jmp case26
	case4:
	cmp bl, 4
	jne case5
	mov di, Rowbg_22
	push di
	call print_onFRow
	mov byte[current_rowbg], 5
	jmp case26
	case5:
	cmp bl, 5
	jne case6
	mov di, Rowbg_21
	push di
	call print_onFRow
	mov byte[current_rowbg], 6
	jmp case26
	case6:
	cmp bl, 6
	jne case7
	mov di, Rowbg_20
	push di
	call print_onFRow
	mov byte[current_rowbg], 7
	jmp case26
	case7:
	cmp bl, 7
	jne case8
	mov di, Rowbg_19
	push di
	call print_onFRow
	mov byte[current_rowbg], 8
	jmp case26
	case8:
	cmp bl, 8
	jne case9
	mov di, Rowbg_18
	push di
	call print_onFRow
	mov byte[current_rowbg], 9
	jmp case26
	
	case9:
	cmp bl, 9
	
	jne case10
	mov di, Rowbg_17
	push di
	call print_onFRow
	mov byte[current_rowbg], 10
	jmp case26
	case10:
	cmp bl, 10
	
	jne case11
	mov di, Rowbg_16
	push di
	call print_onFRow
	mov byte[current_rowbg], 11
	jmp case26
	case11:
	cmp bl, 11
	jne case12
	mov di, Rowbg_15
	push di
	call print_onFRow
	mov byte[current_rowbg], 12
	jmp case26
	case12:
	cmp bl, 12
	jne case13
	mov di, Rowbg_14
	push di
	call print_onFRow
	mov byte[current_rowbg], 13
	jmp case26
	case13:
	cmp bl, 13
	
	jne case14
	mov di, Rowbg_13
	push di
	call print_onFRow
	mov byte[current_rowbg], 14
	jmp case26
	case14:
	cmp bl, 14
	jne case15
	mov di, Rowbg_12
	push di
	call print_onFRow
	mov byte[current_rowbg], 15
	jmp case26
	case15:
	cmp bl, 15
	jne case16
	mov di, Rowbg_11
	push di
	call print_onFRow
	mov byte[current_rowbg], 16
	jmp case26
	case16:
	cmp bl, 16
	jne case17
	mov di, Rowbg_10
	push di
	call print_onFRow
	mov byte[current_rowbg], 17
	mov word[bool_disable_tilt_road],1
	jmp case26
	case17:
	cmp bl, 17
	jne case18
	mov di, Rowbg_9
	push di
	call print_onFRow
	mov byte[current_rowbg], 18
	jmp case26
	case18:
	cmp bl, 18
	
	jne case19
	mov di, Rowbg_8
	push di
	call print_onFRow
	mov byte[current_rowbg], 19
	jmp case26
	case19:
	cmp bl, 19
	jne case20
	mov di, Rowbg_7
	push di
	call print_onFRow
	mov byte[current_rowbg], 20
	jmp case26
	case20:
	cmp bl, 20
	jne case21
	mov di, Rowbg_6
	push di
	call print_onFRow
	mov byte[current_rowbg], 21
	jmp case26
	case21:
	cmp bl, 21
	jne case22
	mov di, Rowbg_5
	push di
	call print_onFRow
	mov byte[current_rowbg], 22
	jmp case26
	case22:
	cmp bl, 22
	
	jne case23
	mov di, Rowbg_4
	push di
	call print_onFRow
	mov byte[current_rowbg], 23
	jmp case26
	case23:
	cmp bl, 23
	jne case24
	mov di, Rowbg_3
	push di
	call print_onFRow
	mov byte[current_rowbg], 24
	mov word[bool_disable_tilt_road],0
	jmp case26
	case24:
	cmp bl, 24
	jne case25
	mov di, Rowbg_2
	push di
	call print_onFRow
	mov byte[current_rowbg], 25
	jmp case26
	case25:
	cmp bl, 25
	jne case26
	mov di, Rowbg_1
	push di
	call print_onFRow
	mov byte[current_rowbg], 1
	case26:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	add sp, 2
	ret

;	Proceed with the second background (tilted road, also include the functionality of rows movement in it)
event_2_try:

	push bp
	mov bp, sp
	push 0; lv at bp-2
	
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov dx, 24
	mov si, 3680
	mov di, 3840
	mov ax, 0xb800
	mov bx, ds
	mov ds, ax
	mov es, ax
	
	

	mov_rowsx:
	mov [bp-2], dx
	
	;compare dx with all the car rows, if not equal simply move all cols; if equal proceed to the cols loop
	mov cx, 3
	mov ds, bx
	push si
	push bx
	push ax
	mov si, [car_row]
	mov dx, [bp-2]
	mov ax, dx
	sub ax, 1
	;for car player
	
	compare_incarx:
	;compare with the previous row of car
	 mov bx, [car_row]
	 sub bx, 1
	 cmp ax, bx
	 je compare_in_exitx
	;compare with car rows
	 cmp ax, si
	 je compare_in_exitx
	 add si, 1
	 loop compare_incarx
	
;move entire row
	;pop cx
	pop ax
	pop bx
	pop si
	mov cx, 43
	mov ds, ax
	
	rep movsw
	
	mov dx, [bp-2]
	sub dx, 1
	sub si, 86
	sub di, 86
	sub si, 160
	sub di, 160
	cmp dx, 0
	ja mov_rowsx	
	jmp after_mov_rowsx
	
	compare_in_exitx:
	;pop cx
	mov cx, 43
	pop ax
	pop bx
	pop si
		
		mov_colsx:
		mov ds, bx
		push 0
		push si
		;push cx
		call comapare_carPexel
		pop dx
		mov ds, ax
		cmp dx, 0
		je move_pexelx
		add si, 2
		add di, 2
		jmp donot_movex
		move_pexelx:
			mov ds, bx
			push 0
			push si
			;push cx
			call compare_prevCarPexel
			pop dx
			mov ds, ax
			cmp dx, 0
			je move_pexel2x
		
;		;move the current display pixels to the background memory and print the lastrow of background memory and update si/di
		push ax
		push bx
		mov ds, bx
		;print the lastrow of bg
		add di, 480
		mov ax,[car_3rdrow]
		mov word [es:di],ax
		add di, 2
		mov ax,[car_3rdrow+2]
		mov word [es:di],ax
		add di, 2
		mov ax,[car_3rdrow+4]
		mov word [es:di],ax
		sub di, 484
		;update the bg memory
		mov ax,[car_2ndrow]
		mov [car_3rdrow], ax
		mov ax,[car_2ndrow+2]
		mov [car_3rdrow+2], ax
		mov ax,[car_2ndrow+4]
		mov [car_3rdrow+4], ax
		mov ax,[car_1strow]
		mov [car_2ndrow], ax
		mov ax,[car_1strow+2]
		mov [car_2ndrow+2], ax
		mov ax,[car_1strow+4]
		mov [car_2ndrow+4], ax
		;move the currentpexels to background memory
		mov ax,  [es:si]
		mov [car_1strow], ax
		add si, 2
		mov ax,  [es:si]
		mov [car_1strow+2], ax
		add si, 2
		mov ax, [es:si]
		mov [car_1strow+4], ax
		sub si, 4
		add si, 6
		add di, 6
		pop bx
		pop ax
		mov ds, ax
		
		jmp donot_movex
		move_pexel2x:
		movsw
		donot_movex:
		
		dec cx
		jnz mov_colsx
		mov dx, [bp-2]
		sub dx, 1
		sub si, 86
		sub di, 86
		sub si, 160
		sub di, 160
		cmp dx, 0
		ja mov_rowsx
		jmp after_mov_rowsx
	
	after_mov_rowsx:
	mov ds, bx
	mov bl, [event2_stage]
	paste_FirstRx:
    case1x:
	cmp bl, 1
	jne case2x
	mov di, Rowev2_1
	push di
	call print_onFRow
	mov byte[event2_stage], 2 
	mov word[apparent_road_corners], 17
	mov word[bool_disable_card],1
	mov word [bool_disable_card2],1
	jmp case51x
	case2x:
	cmp bl, 2
	jne case3x
	mov di, Rowev2_2
	push di
	call print_onFRow
	mov byte[event2_stage], 3
	mov word[apparent_road_corners+2], 27
	jmp case51x
	case3x:
	cmp bl, 3
	jne case4x
	mov di, Rowev2_3
	push di
	call print_onFRow
	mov byte[event2_stage], 4
	mov word[apparent_road_corners], 19
	jmp case51x
	case4x:
	cmp bl, 4
	jne case5x
	mov di, Rowev2_4
	push di
	call print_onFRow
	mov byte[event2_stage], 5
	mov word[apparent_road_corners+2], 29
	jmp case51x
	case5x:
	cmp bl, 5
	jne case6x
	mov di, Rowev2_5
	push di
	call print_onFRow
	mov byte[event2_stage], 6
	mov word[apparent_road_corners], 21
	jmp case51x
	case6x:
	cmp bl, 6
	jne case7x
	mov di, Rowev2_6
	push di
	call print_onFRow
	mov byte[event2_stage], 7
	mov word[apparent_road_corners+2], 31
	jmp case51x
	case7x:
	cmp bl, 7
	jne case8x
	mov di, Rowev2_7
	push di
	call print_onFRow
	mov byte[event2_stage], 8
	mov word[apparent_road_corners], 23
	jmp case51x
	case8x:
	cmp bl, 8
	jne case9x
	mov di, Rowev2_8
	push di
	call print_onFRow
	mov byte[event2_stage], 9
	mov word[apparent_road_corners+2], 33
	mov word[bool_disable_card],0
	mov word [bool_disable_card2],0
	jmp case51x
	case9x:
	cmp bl, 9
	jne case10x
	mov di, Rowev2_9
	push di
	call print_onFRow
	mov byte[event2_stage], 10
	jmp case51x
	case10x:
	cmp bl, 10
	jne case11x
	mov di, Rowev2_10
	push di
	call print_onFRow
	mov byte[event2_stage], 11
	jmp case51x
	case11x:
	cmp bl, 11
	jne case12x
	mov di, Rowev2_11
	push di
	call print_onFRow
	mov byte[event2_stage], 12
	jmp case51x
	case12x:
	cmp bl, 12
	jne case13x
	mov di, Rowev2_12
	push di
	call print_onFRow
	mov byte[event2_stage], 13
	jmp case51x
	case13x:
	cmp bl, 13
	jne case14x
	mov di, Rowev2_13
	push di
	call print_onFRow
	mov byte[event2_stage], 14
	jmp case51x
	case14x:
	cmp bl, 14
	jne case15x
	mov di, Rowev2_14
	push di
	call print_onFRow
	mov byte[event2_stage], 15
	jmp case51x
	case15x:
	cmp bl, 15
	jne case16x
	mov di, Rowev2_15
	push di
	call print_onFRow
	mov byte[event2_stage], 16
	jmp case51x
	case16x:
	cmp bl, 16
	jne case17x
	mov di, Rowev2_16
	push di
	call print_onFRow
	mov byte[event2_stage], 17
	jmp case51x
	case17x:
	cmp bl, 17
	jne case18x
	mov di, Rowev2_17
	push di
	call print_onFRow
	mov byte[event2_stage], 18
	jmp case51x
	case18x:
	cmp bl, 18
	jne case19x
	mov di, Rowev2_18
	push di
	call print_onFRow
	mov byte[event2_stage], 19
	jmp case51x
	case19x:
	cmp bl, 19
	jne case20x
	mov di, Rowev2_19
	push di
	call print_onFRow
	mov byte[event2_stage], 20
	jmp case51x
	case20x:
	cmp bl, 20
	jne case21x
	mov di, Rowev2_20
	push di
	call print_onFRow
	mov byte[event2_stage], 21
	jmp case51x
	case21x:
	cmp bl, 21
	jne case22x
	mov di, Rowev2_21
	push di
	call print_onFRow
	mov byte[event2_stage], 22
	jmp case51x
	case22x:
	cmp bl, 22
	jne case23x
	mov di, Rowev2_22
	push di
	call print_onFRow
	mov byte[event2_stage], 23
	mov word[road_corners], 17
	
	jmp case51x
	
	case23x:
	cmp bl, 23
	jne case24x
	mov di, Rowev2_23
	push di
	call print_onFRow
	mov byte[event2_stage], 24
	
	jmp case51x
	
	case24x:
	cmp bl, 24
	jne case25x
	mov di, Rowev2_24
	push di
	call print_onFRow
	mov byte[event2_stage], 25
	mov word[road_corners], 19
	mov word[road_corners+2], 27
	jmp case51x
	
	case25x:
	cmp bl, 25
	jne case26x
	mov di, Rowev2_25
	push di
	call print_onFRow
	mov byte[event2_stage], 26
	
	jmp case51x
	
	case26x:
	cmp bl, 26
	jne case27x
	mov di, Rowev2_24
	push di
	call print_onFRow
	mov byte[event2_stage], 27
	mov word[road_corners], 21
	mov word[road_corners+2], 29
	jmp case51x
	
	case27x:
	cmp bl, 27
	jne case28x
	mov di, Rowev2_23
	push di
	call print_onFRow
	mov byte[event2_stage], 28
	
	jmp case51x
	
	case28x:
	cmp bl, 28
	jne case29x
	mov di, Rowev2_22
	push di
	call print_onFRow
	mov byte[event2_stage], 29
	mov word[road_corners], 23
	mov word[road_corners+2], 31
	jmp case51x
	
	case29x:
	cmp bl, 29
	jne case30x
	mov di, Rowev2_21
	push di
	call print_onFRow
	mov byte[event2_stage], 30
	
	jmp case51x
	
	case30x:
	cmp bl, 30
	jne case31x
	mov di, Rowev2_20
	push di
	call print_onFRow
	mov byte[event2_stage], 31
	mov word[road_corners+2], 33
	jmp case51x
	
	case31x:
	cmp bl, 31
	jne case32x
	mov di, Rowev2_19
	push di
	call print_onFRow
	mov byte[event2_stage], 32
	jmp case51x
	
	case32x:
	cmp bl, 32
	jne case33x
	mov di, Rowev2_18
	push di
	call print_onFRow
	mov byte[event2_stage], 33
	jmp case51x
	
	case33x:
	cmp bl, 33
	jne case34x
	mov di, Rowev2_17
	push di
	call print_onFRow
	mov byte[event2_stage], 34
	jmp case51x
	
	case34x:
	cmp bl, 34
	jne case35x
	mov di, Rowev2_16
	push di
	call print_onFRow
	mov byte[event2_stage], 35
	jmp case51x
	case35x:
	cmp bl, 35
	jne case36x
	mov di, Rowev2_15
	push di
	call print_onFRow
	mov byte[event2_stage], 36
	jmp case51x
	case36x:
	cmp bl, 36
	jne case37x
	mov di, Rowev2_14
	push di
	call print_onFRow
	mov byte[event2_stage], 37
	jmp case51x
	case37x:
	cmp bl, 37
	jne case38x
	mov di, Rowev2_13
	push di
	call print_onFRow
	mov byte[event2_stage], 38
	jmp case51x
	case38x:
	cmp bl, 38
	jne case39x
	mov di, Rowev2_12
	push di
	call print_onFRow
	mov byte[event2_stage], 39
	jmp case51x
	case39x:
	cmp bl, 39
	jne case40x
	mov di, Rowev2_11
	push di
	call print_onFRow
	mov byte[event2_stage], 40
	jmp case51x
	case40x:
	cmp bl, 40
	jne case41x
	mov di, Rowev2_10
	push di
	call print_onFRow
	mov byte[event2_stage], 41
	jmp case51x
	case41x:
	cmp bl, 41
	jne case42x
	mov di, Rowev2_9
	push di
	call print_onFRow
	mov byte[event2_stage], 42
	mov word[apparent_road_corners+2], 31
	mov word[bool_disable_card],1
	mov word [bool_disable_card2],1
	jmp case51x
	case42x:
	cmp bl, 42
	jne case43x
	mov di, Rowev2_8
	push di
	call print_onFRow
	mov byte[event2_stage], 43
	mov word[apparent_road_corners], 21
	jmp case51x
	case43x:
	cmp bl, 43
	jne case44x
	mov di, Rowev2_7
	push di
	call print_onFRow
	mov byte[event2_stage], 44
	mov word[apparent_road_corners+2], 29
	jmp case51x
	case44x:
	cmp bl, 44
	jne case45x
	mov di, Rowev2_6
	push di
	call print_onFRow
	mov byte[event2_stage], 45
	mov word[apparent_road_corners], 19
	jmp case51x
	case45x:
	cmp bl, 45
	jne case46x
	mov di, Rowev2_5
	push di
	call print_onFRow
	mov byte[event2_stage], 46
	mov word[apparent_road_corners+2], 27
	jmp case51x
	case46x:
	cmp bl, 46
	jne case47x
	mov di, Rowev2_4
	push di
	call print_onFRow
	mov byte[event2_stage], 47
	mov word[apparent_road_corners], 17
	jmp case51x
	case47x:
	cmp bl, 47
	jne case48x
	mov di, Rowev2_3
	push di
	call print_onFRow
	mov byte[event2_stage], 48
	mov word[apparent_road_corners+2], 26
	jmp case51x
	case48x:
	cmp bl, 48
	jne case49x
	mov di, Rowev2_2
	push di
	call print_onFRow
	mov byte[event2_stage], 49
	mov word[apparent_road_corners], 16
	jmp case51x
	case49x:
	cmp bl, 49
	jne case51x
	mov di, Rowev2_1
	push di
	call print_onFRow
	mov byte[event2_stage], 51
	mov word[check_1_roadcorner], 1
	mov word[bool_disable_card],0
	mov word [bool_disable_card2],0
	jmp case51x
	case51x:
	
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	add sp, 2
	ret

;adds the functionality in bonus car (how it will emerge on road)
handle_car_bonus:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov di, 0
	mov si, [carb_timer]
	cmp si, 0
	jne dec_timexwrap
	jmp carb_handler_cont1
	dec_timexwrap:
	jmp dec_timex
	carb_handler_cont1:
	mov bx, carb_stage
	mov ax, [bx]
	cmp ax, 0
	je stage_1_carb
	cmp ax, 1
	je stage_2_carb
	cmp ax, 2
	je stage_3_carb
	stage_1_carb:
	mov ax, [card_timer]
	cmp ax, 2
	jbe randomize_car_herexwrap
	mov ax, [card2_timer]
	cmp ax, 2
	jbe randomize_car_herexwrap
	mov ax, [hurdle_timer]
	cmp ax, 2
	jbe randomize_car_herexwrap
	jmp carb_handler_cont
	randomize_car_herexwrap:
	jmp randomize_car_herex
	carb_handler_cont:
	call randomize_bonus_car
	mov word[carB_row+4], 0
	mov word[bx], 1
	mov byte[carb_crash_check], 1
	jmp stage_4_carb
	stage_2_carb:
	mov word[carB_row+4], 1
	mov word[carB_row+2], 0
	mov  word[bx], 2
	jmp stage_4_carb
	stage_3_carb:
	mov word[carB_row+4], 2
	mov word[carB_row+2], 1
	mov word[carB_row], 0
	mov word [bx], 0
	mov si, carb_timer
	push 0
	mov dx, 100
	push dx
	call RANDNUM
	pop dx
	add dx, 189
	mov word[si], dx
	mov di, 1
	jmp stage_4_carb
	
	dec_timex:
	mov si, carb_timer
	mov cx, [si]
	sub cx, 1
	mov word[si], cx
	jmp handle_car_bonus_exit
	
	stage_4_carb:
	push carB_col
	push carB_row
	call car_B
	mov word[carB_row+4], 0
	mov word[carB_row+2], 0
	mov word[carB_row], 0
	;cmp di, 1
	jmp handle_car_bonus_exit
	randomize_car_herex:
	;call randomize_danger_car
	mov word[carb_stage],0
	mov word[carb_timer], 9
	handle_car_bonus_exit:
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret



;adds the functionality in car danger(how it will emerge on road)
handle_car_danger:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov di, 0
	mov si, [card_timer]
	cmp si, 0
	jne dec_time1wrap
	jmp cont1_hcd
	dec_time1wrap:
	jmp dec_time
	cont1_hcd:
	mov bx, card_stage
	mov ax, [bx]
	cmp ax, 0
	je stage_1_card
	cmp ax, 1
	je stage_2_card
	cmp ax, 2
	je stage_3_card
	stage_1_card:
	mov dx, [bool_disable_card]
	cmp dx, 1
	je card_is_disabledwrap
	jmp cont2_hcd
	card_is_disabledwrap:
	jmp card_is_disabled
	cont2_hcd:
	mov dx, [card2_timer]
	cmp dx, 9
	jbe card_is_disabled
	mov dx, [hurdle_timer]
	cmp dx, 9
	jbe card_is_disabled
	mov dx, [carb_timer]
	cmp dx, 9
	jbe card_is_disabled
	call randomize_danger_car
	mov word[carD_row+4], 0
	mov word[bx], 1
	mov byte[card_crash_check], 1
	jmp stage_4_card
	stage_2_card:
	mov word[carD_row+4], 1
	mov word[carD_row+2], 0
	mov  word[bx], 2
	jmp stage_4_card
	stage_3_card:
	mov word[carD_row+4], 2
	mov word[carD_row+2], 1
	mov word[carD_row], 0
	mov word [bx], 0
	mov si, card_timer
	push 0
	mov dx, 40
	push dx
	call RANDNUM
	pop dx
	add dx, 25
	mov word[si], dx
	mov di, 1
	jmp stage_4_card
	
	dec_time:
	mov si, card_timer
	mov cx, [si]
	sub cx, 1
	mov word[si], cx
	jmp handle_car_danger_exit
	
	
	card_is_disabled:
	mov word[carD_row+4], 0
	mov word[carD_row+2], 0
	mov word[carD_row], 0
	mov word [bx], 0
	mov si, card_timer
	push 0
	mov dx, 20
	push dx
	call RANDNUM
	pop dx
	add dx, 10
	mov word[si], dx
	jmp handle_car_danger_exit
	
	stage_4_card:
	push carD_col
	push carD_row
	call car_D
	mov word[carD_row+4], 0
	mov word[carD_row+2], 0
	mov word[carD_row], 0
	cmp di, 1
	jne handle_car_danger_exit
	push 0
	mov dx, 3
	push dx
	call RANDNUM
	pop dx
	cmp dx, 1
	je color_1_carD
	cmp dx, 2
	je color_2_carD
	cmp dx, 3
	je color_3_carD
	color_1_carD:
	mov word [carD_color], 0000b
	jmp handle_car_danger_exit
	color_2_carD:
	mov word[carD_color], 0010b
	jmp handle_car_danger_exit
	color_3_carD:
	mov word[carD_color], 0001b
	
	randomize_car_here:
	;call randomize_danger_car
	handle_car_danger_exit:
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret

;adds the functionality in 2nd danger car (how it will emerge on road)
handle_car_danger2:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov di, 0
	mov si, [card2_timer]
	cmp si, 0
	jne dec_time2wrap
	jmp cont1_hcd2
	dec_time2wrap:
	jmp dec_time2
	cont1_hcd2:
	mov bx, card2_stage
	mov ax, [bx]
	cmp ax, 0
	je stage_1_card2
	cmp ax, 1
	je stage_2_card2
	cmp ax, 2
	je stage_3_card2
	stage_1_card2:
	mov dx, [bool_disable_card2]
	cmp dx, 1
	je card2_is_disabledwrap
	jmp cont2_hcd2
	card2_is_disabledwrap:
	jmp card2_is_disabled
	cont2_hcd2:
	mov dx, [card_timer]
	cmp dx, 9
	jbe card2_is_disabled
	mov dx, [hurdle_timer]
	cmp dx, 9
	jbe card2_is_disabled
	mov dx, [carb_timer]
	cmp dx, 9
	jbe card2_is_disabled
	call randomize_danger_car2
	mov word[carD2_row+4], 0
	mov word[bx], 1
	mov byte[card2_crash_check], 1
	jmp stage_4_card2
	stage_2_card2:
	mov word[carD2_row+4], 1
	mov word[carD2_row+2], 0
	mov  word[bx], 2
	jmp stage_4_card2
	stage_3_card2:
	mov word[carD2_row+4], 2
	mov word[carD2_row+2], 1
	mov word[carD2_row], 0
	mov word [bx], 0
	mov si, card2_timer
	push 0
	mov dx, 40
	push dx
	call RANDNUM
	pop dx
	add dx, 35
	mov word[si], dx
	mov di, 1
	jmp stage_4_card2
	
	dec_time2:
	mov si, card2_timer
	mov cx, [si]
	sub cx, 1
	mov word[si], cx
	jmp handle_car_danger_exit2
	
	
	card2_is_disabled:
	mov word[carD2_row+4], 0
	mov word[carD2_row+2], 0
	mov word[carD2_row], 0
	mov word [bx], 0
	mov si, card2_timer
	push 0
	mov dx, 20
	push dx
	call RANDNUM
	pop dx
	add dx, 10
	mov word[si], dx
	jmp handle_car_danger_exit2
	
	stage_4_card2:
	push carD2_col
	push carD2_row
	call car_D2
	mov word[carD2_row+4], 0
	mov word[carD2_row+2], 0
	mov word[carD2_row], 0
	cmp di, 1
	jne handle_car_danger_exit2
	push 0
	mov dx, 3
	push dx
	call RANDNUM
	pop dx
	cmp dx, 1
	je color_1_carD2
	cmp dx, 2
	je color_2_carD2
	cmp dx, 3
	je color_3_carD2
	color_1_carD2:
	mov word [carD2_color], 0000b
	jmp handle_car_danger_exit2
	color_2_carD2:
	mov word[carD2_color], 0010b
	jmp handle_car_danger_exit2
	color_3_carD2:
	mov word[carD2_color], 0001b
	
	randomize_car_here2:
	;call randomize_danger_car
	handle_car_danger_exit2:
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret

;adds the functionality in spikes (how it will emerge on road)
handle_hurdle:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov si, [hurdle_timer]
	cmp si, 0
	jne dec_time_hurdle
	
	print_hurdle_here:
	call randomize_hurdle
	push hurdle_col
	push hurdle_row
	call Hurdles
	mov byte[hurdle_crash_check], 1
	push 0
	mov dx, 40
	push dx
	call RANDNUM
	pop dx
	add dx, 50
	mov word[hurdle_timer], dx
	jmp handle_hurdle_exit
	
	dec_time_hurdle:
	
	mov si, hurdle_timer
	mov cx, [si]
	sub cx, 1
	mov word[si], cx
	jmp handle_hurdle_exit
	
	handle_hurdle_exit:
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
;adds the functionality in events (which event to call?, when call?)
handle_events:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	call reset_road_corners
	
	
	
	mov bx, event2_timer
	mov dx, [bx]
	cmp dx, 0
	je event2_turn
	call event_1_try
	mov ax, [bx]
	dec ax
	mov word [bx],ax 
	jmp handle_events_exit
	
	event2_turn:
	mov cx,[bool_disable_tilt_road]
	cmp cx, 1
	je set_timer_for_ev2
	call event_2_try
	mov dl, [event2_stage]
	cmp dl, 51
	jne handle_events_exit
	
	set_timer_for_ev2:
	push 0
	mov dx, 40
	push dx
	call RANDNUM
	pop dx
	add dx, 70
	mov word [bx],dx
	mov byte [event2_stage], 1
	
	
	handle_events_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
;adds functionality in score (when inc? how inc?)
handle_score:
		
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov al, [score_delay]
	cmp al, 0
	jne scoreDelay_dec
	
	
	call score_printing
	mov ax, 1
	push ax
	call inc_score
	mov byte [score_delay], 3
	
	jmp  handle_score_exit
	
	scoreDelay_dec:
	mov al, [score_delay]
	sub al, 1
	mov byte[score_delay], al
	
	handle_score_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
handle_fuel:
		
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	call fuel_printing
	mov al, [fuel_delay]
	cmp al, 0
	jne fuelDelay_dec
	
	
	
	mov ax, 1
	push ax
	call dec_fuel
	cmp word[totalfuel], 0
	je fuel_zero
	mov byte [fuel_delay], 8
	
	jmp  handle_fuel_exit
	
	fuelDelay_dec:
	mov al, [fuel_delay]
	sub al, 1
	mov byte[fuel_delay], al
	jmp  handle_fuel_exit
	
	fuel_zero:
	mov byte[bool_termination_by_crash],1
	
	handle_fuel_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret	
	
;it will restrict the movement of player car(for example: if player tries to move far left from the road)
realign_player_car:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov ax, [car_col]
	mov dx, [road_corners]
	cmp ax, dx
	jb realign_car_right
	
	check2:
	mov ax, [car_col+4]
	mov dx, [road_corners+2]
	cmp ax, dx
	ja realign_car_left
	
	jmp realign_player_car_exit
	
	realign_car_left:
	call mov_left
	mov ax, [car_col]
	mov dx, [road_corners]
	cmp ax, dx
	jb realign_car_right
	
	jmp realign_player_car_exit
	
	realign_car_right:
	call mov_right
	mov ax, [car_col]
	mov dx, [road_corners]
	cmp ax, dx
	jb realign_car_right
	
	realign_player_car_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
;handle all the fucntionality of landing/starting page
start_game_menu:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	call start_page
	loop_start_page:
	mov al, [bool_start_status]
	cmp al, 0
	je loop_start_page
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;handles all the functionality of ending/ game-over page
	end_game_menu:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	call end_page
	loop_end_page:
	mov al, [bool_end_status]
	cmp al, 0
	je loop_end_page
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;checks if player car and danger car collided 
	check_for_card_crash: ;push output @4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov cx, 3
	mov si, 0
	check_if_same_col:
	mov dx, [carD_col+si]
	mov	bx, [car_col]
	cmp dx, bx
	je crash_happened
	add si, 2
	loop check_if_same_col
	
	mov cx, 3
	mov si, 0
	check_if_same_col2:
	mov dx, [carD_col]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happened
	add si, 2
	loop check_if_same_col2
	
	mov cx, 3
	mov si, 0
	check_if_same_col3:
	mov dx, [carD_col+2]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happened
	add si, 2
	loop check_if_same_col3
	
	mov cx, 3
	mov si, 0
	check_if_same_col4:
	mov dx, [carD_col+4]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happened
	add si, 2
	loop check_if_same_col4
	
	mov word[bp+4], 0
	jmp check_for_card_crash_exit
	crash_happened:
	mov word[bp+4],1
	
	check_for_card_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	;checks if player car and 2nd danger car collided 
	check_for_card2_crash: ;push output @4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov cx, 3
	mov si, 0
	check_if_same_cold2:
	mov dx, [carD2_col+si]
	mov	bx, [car_col]
	cmp dx, bx
	je crash_happenedd2
	add si, 2
	loop check_if_same_cold2
	
	mov cx, 3
	mov si, 0
	check_if_same_col2d2:
	mov dx, [carD2_col]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedd2
	add si, 2
	loop check_if_same_col2d2
	
	mov cx, 3
	mov si, 0
	check_if_same_col3d2:
	mov dx, [carD2_col+2]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedd2
	add si, 2
	loop check_if_same_col3d2
	
	mov cx, 3
	mov si, 0
	check_if_same_col4d2:
	mov dx, [carD2_col+4]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedd2
	add si, 2
	loop check_if_same_col4d2
	
	mov word[bp+4], 0
	jmp check_for_card2_crash_exit
	crash_happenedd2:
	mov word[bp+4],1
	
	check_for_card2_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	;checks if player car and bonus car collided 
	check_for_carb_crash: ;push output @4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov cx, 3
	mov si, 0
	check_if_same_coly:
	mov dx, [carB_col+si]
	mov	bx, [car_col]
	cmp dx, bx
	je crash_happenedy
	add si, 2
	loop check_if_same_coly
	
	mov cx, 3
	mov si, 0
	check_if_same_col2y:
	mov dx, [carB_col]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedy
	add si, 2
	loop check_if_same_col2y
	
	mov cx, 3
	mov si, 0
	check_if_same_col3y:
	mov dx, [carB_col+2]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedy
	add si, 2
	loop check_if_same_col3y
	
	mov cx, 3
	mov si, 0
	check_if_same_col4y:
	mov dx, [carB_col+4]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedy
	add si, 2
	loop check_if_same_col4y
	
	mov word[bp+4], 0
	jmp check_for_carb_crash_exit
	crash_happenedy:
	mov word[bp+4],1
	
	check_for_carb_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;checks if player car and spikes are collided 
	check_for_hurdle_crash:;push output @4
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	mov cx, 2
	mov si, 0
	check_if_same_colx:
	mov dx, [hurdle_col+si]
	mov	bx, [car_col]
	cmp dx, bx
	je crash_happenedx
	add si, 2
	loop check_if_same_colx
	
	mov cx, 3
	mov si, 0
	check_if_same_col2x:
	mov dx, [hurdle_col]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedx
	add si, 2
	loop check_if_same_col2x
	
	mov cx, 3
	mov si, 0
	check_if_same_col3x:
	mov dx, [hurdle_col+2]
	mov	bx, [car_col+si]
	cmp dx, bx
	je crash_happenedx
	add si, 2
	loop check_if_same_col3x
	
	mov word[bp+4], 0
	jmp check_for_hurdle_crash_exit
	crash_happenedx:
	mov word[bp+4],1
	
	check_for_hurdle_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;handle the functionality of collision of bonus car with player car
	handle_car_bonus_crash:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	mov al, [carb_crash_check]
	cmp al, 1
	je crash_enabledy
	
	crash_disabledy:
	jmp handle_car_bonus_crash_exit
	
	crash_enabledy:
		mov dx, [carb_crash_counter]
		cmp dx, 0
		je crash_sety
		sub dx, 1
		mov word [carb_crash_counter], dx
		jmp handle_car_bonus_crash_exit
		
	crash_sety:
	  push 0
	  call check_for_carb_crash
	  pop ax
	  cmp ax, 1
	  je terminate_after_crashy
	  mov bx, [carb_crash_enabled_position]
	  cmp bx, 0
	  je disable_carb_crash
	  sub bx, 1
	  mov word [carb_crash_enabled_position], bx
	  jmp handle_car_bonus_crash_exit
	  
	terminate_after_crashy:
	mov byte[bool_termination_by_crash], 0 ;inc score
	mov ax,50
	push ax
	call inc_score
	call inc_fuel
	
	disable_carb_crash:
	mov byte [carb_crash_check], 0
	mov word [carb_crash_counter], 21
	mov word [carb_crash_enabled_position], 3
	
	
	handle_car_bonus_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	;handle the functionality of collision of danger car with player car
	handle_car_danger_crash:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	mov al, [card_crash_check]
	cmp al, 1
	je crash_enabled
	
	crash_disabled:
	jmp handle_car_danger_crash_exit
	
	crash_enabled:
		mov dx, [card_crash_counter]
		cmp dx, 0
		je crash_set
		sub dx, 1
		mov word [card_crash_counter], dx
		jmp handle_car_danger_crash_exit
		
	crash_set:
	  push 0
	  call check_for_card_crash
	  pop ax
	  cmp ax, 1
	  je terminate_after_crash
	  mov bx, [card_crash_enabled_position]
	  cmp bx, 0
	  je disable_card_crash
	  sub bx, 1
	  mov word [card_crash_enabled_position], bx
	  jmp handle_car_danger_crash_exit
	  
	terminate_after_crash:
	mov byte[bool_termination_by_crash], 1
	
	disable_card_crash:
	mov byte [card_crash_check], 0
	mov word [card_crash_counter], 21
	mov word [card_crash_enabled_position], 3
	
	
	handle_car_danger_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	handle_car_danger2_crash:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	mov al, [card2_crash_check]
	cmp al, 1
	je crash_enabledd2
	
	crash_disabledd2:
	jmp handle_car_danger2_crash_exit
	
	crash_enabledd2:
		mov dx, [card2_crash_counter]
		cmp dx, 0
		je crash_setd2
		sub dx, 1
		mov word [card2_crash_counter], dx
		jmp handle_car_danger2_crash_exit
		
	crash_setd2:
	  push 0
	  call check_for_card2_crash
	  pop ax
	  cmp ax, 1
	  je terminate_after_crashd2
	  mov bx, [card2_crash_enabled_position]
	  cmp bx, 0
	  je disable_card2_crash
	  sub bx, 1
	  mov word [card2_crash_enabled_position], bx
	  jmp handle_car_danger2_crash_exit
	  
	terminate_after_crashd2:
	mov byte[bool_termination_by_crash], 1
	
	disable_card2_crash:
	mov byte [card2_crash_check], 0
	mov word [card2_crash_counter], 21
	mov word [card2_crash_enabled_position], 3
	
	
	handle_car_danger2_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;handle the functionality of collision of spikes with player car
	handle_hurdle_crash:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	mov ax, 0
	mov al, [hurdle_crash_check]
	cmp al, 1
	je crash_enabledx
	
	crash_disabledx:
	jmp handle_hurdle_crash_exit
	
	crash_enabledx:
		mov dx, [hurdle_crash_counter]
		cmp dx, 0
		je crash_setx
		sub dx, 1
		mov word [hurdle_crash_counter], dx
		jmp handle_hurdle_crash_exit
		
	crash_setx:
	  push 0
	  call check_for_hurdle_crash
	  pop ax
	  cmp ax, 1
	  je terminate_after_crashx
	  mov bx, [hurdle_crash_enabled_position]
	  cmp bx, 0
	  je disable_hurdle_crash
	  sub bx, 1
	  mov word [hurdle_crash_enabled_position], bx
	  jmp handle_hurdle_crash_exit
	  
	terminate_after_crashx:
	mov byte[bool_termination_by_crash], 1
	
	disable_hurdle_crash:
	mov byte [hurdle_crash_check], 0
	mov word [hurdle_crash_counter], 22
	mov word [hurdle_crash_enabled_position], 1
	
	
	handle_hurdle_crash_exit:
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret

;this function was used to counter check car movements and collisions (not called in the game; used for debugging)
print_car_rows_no:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds

	mov bx, hurdle_col
	mov si, 0
	mov cx, 3
	mov dx, 0
	printcardinfo:
	; push num @6 push pos @4
	mov ax, [bx+si]
	push ax
	mov ax, dx
	push ax
	call print_number
	add si, 2
	add dx, 4
	loop printcardinfo
	
	mov bx, car_col
	mov si, 0
	mov cx, 3
	mov di, 160
	printcardinfo2:
	; push num @6 push pos @4
	mov ax, [bx+si]
	push ax
	mov ax, di
	push ax
	call print_number
	add si, 2
	add di,4
	loop printcardinfo2
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;This will reset all the data (for Play Again)
reset_data:
	push bp
	mov bp,sp
	mov byte[current_rowbg], 25
	mov word[event2_timer], 100
	mov byte[event2_stage], 1
	mov word[hurdle_col], 17
	mov word[hurdle_col+2], 18
	mov word[hurdle_col+4], -1
	mov word[hurdle_row], 0
	mov word[hurdle_row+2], 0
	mov word[hurdle_row+4], -1
	mov word[hurdle_timer], 50
	mov word[car_col], 21
	mov word[car_col+2], 22
	mov word[car_col+4], 23
	mov word[car_col+6], -1
	mov word[car_row], 21
	mov word[car_row+2], 22
	mov word[car_row+4], 23
	mov word[car_row+6], -1
	mov word[car_1strow], 0x0fdb
	mov word[car_1strow+2], 0x0fdb
	mov word[car_1strow+4], 0x0fdb
	mov word[car_2ndrow], 0x0fdb
	mov word[car_2ndrow+2], 0x0fdb
	mov word[car_2ndrow+4], 0x0fdb
	mov word[car_3rdrow], 0x0fdb
	mov word[car_3rdrow+2], 0x0fdb
	mov word[car_3rdrow+4], 0x0fdb
	mov word[carD_col], 18
	mov word[carD_col+2], 19
	mov word[carD_col+4], 20
	mov word[carD_row], 0
	mov word[carD_row+2], 0
	mov word[carD_row+4], 0
	mov word[carD_color], 0000b
	
	mov word[carD2_col], 18
	mov word[carD2_col+2], 19
	mov word[carD2_col+4], 20
	mov word[carD2_row], 0
	mov word[carD2_row+2], 0
	mov word[carD2_row+4], 0
	mov word[carD2_color], 0000b
	
	mov word[card2_1strow], 0x0fdb
	mov word[card2_1strow+2], 0x0fdb
	mov word[card2_1strow+4], 0x0fdb
	mov word[card2_2ndrow], 0x0fdb
	mov word[card2_2ndrow+2], 0x0fdb
	mov word[card2_2ndrow+4], 0x0fdb
	mov word[card2_3rdrow], 0x0fdb
	mov word[card2_3rdrow+2], 0x0fdb
	mov word[card2_3rdrow+4], 0x0fdb
	
	mov word[card_1strow], 0x0fdb
	mov word[card_1strow+2], 0x0fdb
	mov word[card_1strow+4], 0x0fdb
	mov word[card_2ndrow], 0x0fdb
	mov word[card_2ndrow+2], 0x0fdb
	mov word[card_2ndrow+4], 0x0fdb
	mov word[card_3rdrow], 0x0fdb
	mov word[card_3rdrow+2], 0x0fdb
	mov word[card_3rdrow+4], 0x0fdb
	
	
	mov word [card_stage], 0
	mov word [card_timer], 25
	
	mov word [card2_stage], 0
	mov word [card2_timer], 35
	
	
	mov word[card_crash_counter], 21
	mov byte [card_crash_check], 0
	mov word[card_crash_enabled_position], 3
	
	mov word[card2_crash_counter], 21
	mov byte [card2_crash_check], 0
	mov word[card2_crash_enabled_position], 3
	
	mov word[carb_crash_counter], 21
	mov byte [carb_crash_check], 0
	mov word[carb_crash_enabled_position], 3
	mov word [bool_disable_card], 0
	
	mov word [bool_disable_card2], 0
	
	mov word[bool_disable_tilt_road], 0
	mov word[hurdle_crash_counter], 21
	mov byte [hurdle_crash_check], 0
	mov word[hurdle_crash_enabled_position], 3
	mov byte [bool_termination_by_crash], 0
	mov word[carB_col], 23
	mov word[carB_col+2], 24
	mov word[carB_col+4], 25
	mov word[carB_row], 0
	mov word[carB_row+2], 0
	mov word[carB_row+4], 0
	mov word[carb_stage], 0
	mov word[carb_timer], 189
	mov word[road_corners], 16
	mov word[road_corners+2], 26
	mov word[apparent_road_corners], 16
	mov word[apparent_road_corners+2], 26
	mov word[check_1_roadcorner], 0
	mov word[counter_reset_stage], 14
	mov word[counter_correction_stage], 8
	mov word[seed], 10
	mov byte[bool_end_status],0
	mov byte[score_delay], 3
	mov word[totalscore], 0
	mov byte[fuel_delay], 8
	mov word[totalfuel], 100
	mov word[car_speed], 3
	pop bp
	ret

;hooks kbisr2
hook_kbisr2:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	xor ax, ax
	mov es, ax ; point es to IVT base
	mov ax, [es:9*4]
	mov [oldisr], ax ; save offset of old routine
	mov ax, [es:9*4+2]
	mov [oldisr+2], ax ; save segment of old routine
	cli ; disable interrupts
	mov word [es:9*4], kbisr2 ; store offset at n*4
	mov [es:9*4+2], cs ; store segment at n*4+2
	sti ; enable interrupts
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
;unhook kbisr
unhook_kbisr:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	xor ax, ax
	mov es, ax
	mov ax,[oldisr]
	mov bx,[oldisr+2]
	cli
	mov [es:9*4],ax
	mov [es:9*4+2], bx
	sti
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	;hook kbisr
	hook_kbisr:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	xor ax, ax
	mov es, ax ; point es to IVT base
	mov ax, [es:9*4]
	mov [oldisr], ax ; save offset of old routine
	mov ax, [es:9*4+2]
	mov [oldisr+2], ax ; save segment of old routine
	cli ; disable interrupts
	mov word [es:9*4], kbisr ; store offset at n*4
	mov [es:9*4+2], cs ; store segment at n*4+2
	sti ; enable interrupts
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	;hook kbisr3
	hook_kbisr3:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	
	xor ax, ax
	mov es, ax ; point es to IVT base
	mov ax, [es:9*4]
	mov [oldisr], ax ; save offset of old routine
	mov ax, [es:9*4+2]
	mov [oldisr+2], ax ; save segment of old routine
	cli ; disable interrupts
	mov word [es:9*4], kbisr3 ; store offset at n*4
	mov [es:9*4+2], cs ; store segment at n*4+2
	sti ; enable interrupts
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	;handle all the functionality to print the intitial game display
	mainbg_print:
	push bp
	mov bp, sp
	push es
	push ax
	push cx
	push si
	push di
	push bx
	push dx
	push ds
	;print bg
	call background_1
	;print player car
	push car_col
	push car_row
	call car_p1
	
	pop ds
	pop dx
	pop bx
	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret
	
	
;driver code
start:

	call hook_kbisr2
	call start_game_menu
	call unhook_kbisr

	;check terminate
	mov ax, 0
	mov ax, [bool_start_status]
	cmp al, 2
	je terminate_code_wrap

	;check play 
	cmp al, 1
	je start_play_game
	
	terminate_code_wrap:
	jmp terminate_code
	
	;game starts
	start_play_game:
	call instructions_page
	call clrscr ; call the clrscr subroutine
	call hook_kbisr
	call mainbg_print
	
	;game loop
	infinite_loop:
		cli
		
		call handle_score
		
		call handle_fuel
		mov dl, [bool_termination_by_crash]
		cmp dl, 1
		je terminate_code_crash
	
		call handle_events
		call realign_player_car
		call handle_hurdle
		call handle_car_danger
		call handle_car_danger2
		call handle_car_bonus
	;call print_car_rows_no
		call handle_car_bonus_crash
		
		call handle_car_danger_crash
		mov dl, [bool_termination_by_crash]
		cmp dl, 1
		je terminate_code_crash
		
		call handle_car_danger2_crash
		mov dl, [bool_termination_by_crash]
		cmp dl, 1
		je terminate_code_crash
		
		call handle_hurdle_crash
		mov dl, [bool_termination_by_crash]
		cmp dl, 1
		je terminate_code_crash
		
		sti
		call delay
		jmp infinite_loop
	
	terminate_code_crash:
		call unhook_kbisr
		call hook_kbisr3
		call end_game_menu
		call unhook_kbisr
	
	;check terminate
	mov ax, 0
	mov ax, [bool_end_status]
	cmp al, 2
	je terminate_code
	
	;check play 
	cmp al, 1
	je start_play_game_wrap
	
	start_play_game_wrap:
	call reset_data
	jmp start_play_game
	
	
	terminate_code:
	call unhook_kbisr
	call clrscr
	
	mov ax, 0x4c00 ; terminate program
	int 0x21 
