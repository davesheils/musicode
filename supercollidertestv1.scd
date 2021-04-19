// s.quit;
// s.boot;


// {[SinOsc.ar(440, 0, 0.1)] }.play;


// SinOsc= sine wave oscillator class
// ar = audio rate
// (frequency, phase, mul or amplitude)


(
{ var ampOsc;
    ampOsc = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
    SinOsc.ar(440, 0, ampOsc);
}.play;
)



{ SinOsc.ar([440, 442], 0, 0.2) }.play;


(
{ var freq;
    freq = [[660, 880], [440, 660], 1320, 880].choose;
    SinOsc.ar(freq, 0, 0.2);
}.play;
)

{ Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(0.5)) }.play;