form Dump pitch values
  comment Directory of sound files
  text filename dummy
endform

sound_directory$ = "records"
filename$ = filename$ + ".wav"
Read from file: sound_directory$ + "\" + filename$

writeFileLine: "data/pitch_list.csv", "time,f0"
To Pitch: 0, 75, 600
no_of_frames = Get number of frames

for frame from 1 to no_of_frames
    time = Get time from frame number: frame
    pitch = Get value in frame: frame, "Hertz"
    appendFileLine: "pitch_list.txt", "'time','pitch'"
endfor