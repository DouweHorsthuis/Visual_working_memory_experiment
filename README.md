# Work in progress
### Visual_working_memory_experiment
Visual Working Memory experiment for Presentation® NeuroBehavioral Systems

This is still a work in progress, but so far: 
This is a working Memory Task Created for the Cystinosis experiment battery (2021)
The task involves 

  1 seeing a trial with 0-3-5-7 consonants in the middle of the screen, # fill up the remaining places so that it's always 7 "symbols" for visual input
  2 a fixation cross trial 
  3 a probe that 50% of the time has one of the previous consonants and 50% of the time has random other consonants
  4 a response window where people choose if the consonants of the probe were in the first trial
  
This is repeated 72 times.

So far we have not finalized the timing of how long the trials last nor if the timing is accurate when doing the experiment.

Things that are tested:

  1 no consonant ever shows up 2x in 1 trial
  2 if the probe trial should show a repeat, it does
  3 the amounts groups of consonants (0-3-5-7) show up equal amounts (18x)
  4 within the consonant groups half of the trials are repeats the other half are not
  5 both which group of consonants show up and if its a repeat or not are fully randomized
  
Things that are not tested yet:

 1 how long should all the trials last. we need to do some testing to see if we move things around
    - S1 shows for 3000ms
    - ISI for 7000ms
    - S2 shows for 300ms
    - ITI between 7000-9000ms in which they respond (could potentially set this to stop after they responded)

For now, 1 trial takes 17300ms-19300ms. There are a total of 72 trials (as per our document). total time per block 20-23 min per block. in our document we say 3 blocks. total time paradigm = 1h2min-1h9min

  2 How the timing work within the booths
    - need to use the oscilloscope to figure this out