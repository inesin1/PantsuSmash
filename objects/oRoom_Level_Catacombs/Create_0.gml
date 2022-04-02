if (audio_is_playing(soundMenu)) audio_stop_sound(soundMenu);
if (!audio_is_playing(soundBattle)) audio_play_sound(soundBattle, 1, true);
