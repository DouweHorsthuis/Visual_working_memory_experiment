[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<br />
<p align="center">
  <a href="https://github.com/DouweHorsthuis/Visual_working_memory_experiment/">
    <img src="images/logo.jpeg" alt="Logo" width="80" height="80">
  </a> 

<h3 align="center">Visual Working Memory experiment</h3>

<h4 align="center"> Visual Working Memory experiment for Presentation® NeuroBehavioral Systems, This task is created for the Cystinosis experiment battery (2021)</h4>

## This paradigm works, but was scrapped from the study due to time concerns. This means that this paradigm never got it's timing checked and there is not eyetracking added.

**Table of Contents**
  
1. [About the project](#about-the-project)
    - [Built With](#built-with)
2. [Getting started](#getting-started)
    - [Prerequisites](#prerequisites)  
    - [Installation](#installation)
3. [Info about the experiment](#info-about-the-experiment)
    - [Stimuli](#stimuli)
    - [Logfiles](#logfiles)
    - [Sequences](#sequences)
    - [Instructions](#instructions)
    - [Trigger codes](#trigger-codes)
    - [Timing](#timing)
    - [Data collection](#data-collection)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

This is a Visual Working Memory experiment for Presentation® NeuroBehavioral Systems, this task is created for the Cystinosis experiment battery (2021). 
For each trial a string of 7 symboles is presented. This string has either 0/3/5/7 consonants and #s to fill the rest of the space. This trial the partcipants sees a fixation cross for a while followed by 1 consonant. The participant is asked if this consonant was part of the previous group. They respond by pressing the left of right Ctrl button. 


### Built With

* [Presentation® (NeuroBehavioral Systems)](https://www.neurobs.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need to have any version of the Presentation software. 

<!--To achieve the same stable time resolution this experiment should be presented on a 60Hz screen. THIS IS NOT YET TESTED -->


### Installation

[Download this Repo](https://github.com/DouweHorsthuis/Visual_working_memory_experiment)

Create 3 folders

Folder 1 - "Presentation Files"  - this folder should contain all the presentation files and Sequences found in the "src" folder

Folder 2 - "Logfiles"           - this folder will be filled with all the presentation Logfiles containing the behavioral data


## Info about the experiment

### Stimuli

The stimuli are all created each time by Presentation so for this paradigm there are no separate stimuli.

### Logfiles

Logfiles with experiment reaction times and other information automatically should be placed in the logfile folder. In these logfiles you will find the behavioral information of each time the experiment is ran. 

### Sequences 

Most things are semi random. This means, in the case of how many consonants are show for each trial, that Presenation makes sure that the order is compelety random. However we do make sure that each amount of consonants (0/3/5/7) happens equal amounts of times (18X).  
In the case of how many times the probe trial will be one of the consonants or a random other one, that it happens 50% of the time and that it's competely random. However we make sure that for each group of consontans equal amounts of "in the set" vs. "out of the set" probe trials happen.
Lastly, it is competely random which consonants are chosen, we just make sure that in one set it's never 2x the same one. 

### Instructions

When collecting data you should run the "Visual Working Memory Instruction SCENARIO" first.  The participant is presented with the following instructions:  
```
You will see consonants on the screen.  
Memorize them, as you will be asked if a specific consonant was part of te set you just saw.  
If you think the consonant was in the set, press the right Ctrl with your right index finger  
If you think the consonant was not in the set, press the left Ctrl left index finger  
  
  
  
Please press any Ctrl 2x to start the practice
```
After This they will get 32 practice trials (this is the minimum amount of trials presenation needs to create a full scenario).  
If the participant understands the task there is no need to complete all 32.




### Trigger codes

The presentation software sends codes to the EEG system so that the responses and the stimuli can be time locked in the EEG data. 
The following is an explanation of each trigger code: 
```
port code 201 = start recording
port code 200 = pause recording 
port code 1 or 2 responses
port code 10 s1 no consonants
port code 11 s2 same no consonants
port code 12 s2 not same no consonants
port code 30 s1 3 consonants
port code 31 s2 same 3 consonants
port code 32 s2 not same 3 consonants
port code 50 s1 5 consonants
port code 51 s2 same 5 consonants
port code 52 s2 not same 5 consonants
port code 70 s1 7 consonants
port code 71 s2 same 7 consonants
port code 72 s2 not same 7 consonants
```

### Timing
The reason this experiment is coded in presentation, is because of the timing resolution of this software/language. When setup correctly this experiment has potentially 1ms of jitter. This will be measured here at our lab, using an oscilloscope. It is critical that this is re-tested before EEG data is collected. This has not yet happend because we haven't decided on the duration of the trials.

For now this is how long should all the trials last. we need to do some testing to see if we move things around
    - S1 shows for 3000ms
    - ISI for 7000ms
    - S2 shows for 300ms
    - ITI between 7000-9000ms in which they respond (could potentially set this to stop after they responded)
    
For now, 1 trial takes 17300ms-19300ms. There are a total of 72 trials (as per our document). total time per block 20-23 min per block. in our document we say 3 blocks. total time paradigm = 1h2min-1h9min

### Data collection
This experiment is used to collected EEG data. To have enough trials one should run the scenarios 3x in a row. 

<!-- LICENSE -->
## License

Distributed under the MIT License. See [LICENSE](https://github.com/DouweHorsthuis/Active-and-passive-inhibition-experiment-Cued-BOSS/blob/master/LICENSE.txt) for more information.



<!-- CONTACT -->
## Contact

Your Name - [@douwejhorsthuis](https://twitter.com/douwejhorsthuis) - douwehorsthuis@gmail.com

Project Link: [https://github.com/DouweHorsthuis/Visual_working_memory_experiment/](https://github.com/DouweHorsthuis/Visual_working_memory_experiment/)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Ana Francisco](https://github.com/anafrancisco) - The post doctoral fellow that conceptiolized the experiment





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/DouweHorsthuis/Visual_working_memory_experiment.svg?style=for-the-badge
[contributors-url]: https://github.com/DouweHorsthuis/Visual_working_memory_experiment/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/DouweHorsthuis/Visual_working_memory_experiment.svg?style=for-the-badge
[forks-url]: https://github.com/DouweHorsthuis/Visual_working_memory_experiment/network/members
[stars-shield]: https://img.shields.io/github/stars/DouweHorsthuis/Visual_working_memory_experiment.svg?style=for-the-badge
[stars-url]: https://github.com/DouweHorsthuis/Visual_working_memory_experiment/stargazers
[issues-shield]: https://img.shields.io/github/issues/DouweHorsthuis/Visual_working_memory_experiment.svg?style=for-the-badge
[issues-url]: https://github.com/DouweHorsthuis/Visual_working_memory_experiment/issues
[license-shield]: https://img.shields.io/github/license/DouweHorsthuis/Visual_working_memory_experiment.svg?style=for-the-badge
[license-url]: https://github.com/DouweHorsthuis/Visual_working_memory_experiment/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/douwe-horsthuis-725bb9188
    

