/// create_pulse(pulse_creator, is_from_enemy)
/// Relevant to the square shape

var pulse_creator = argument0;
var is_from_enemy = argument1;

var squ_pulse = instance_create(pulse_creator.x, pulse_creator.y, obj_pulse);
squ_pulse.creator = pulse_creator;
squ_pulse.from_enemy = is_from_enemy;
squ_pulse.image_angle = pulse_creator.image_angle;
audio_play_sound(snd_pulse, 1, false);
