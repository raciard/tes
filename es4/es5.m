audioFour = audioread("four_noise.wav");
audioThreeNoise = audioread("three_noise.wav");
audioThreeRef = audioread("three_ref.wav");


Rref = xcorr(audioThreeRef, audioThreeRef);



Rc1 = xcorr(audioThreeRef, audioThreeNoise);
Rc1 = Rc1 * norm(Rref) / norm(Rc1);
Rc2 = xcorr(audioThreeRef, audioFour);

Rc2 = Rc2 * norm(Rref) / norm(Rc1);

