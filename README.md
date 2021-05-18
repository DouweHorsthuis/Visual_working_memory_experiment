<!--
This is all based on https://github.com/othneildrew/Best-README-Template, othneildrew's "best-README-Template". I only made some edits 
that I thought were making things clearer

When starting a new readme file, to avoid retyping too much info. Do a search and replace with your text editor for the following:**
`github_username`, `repo`, `twitter_handle`, `email`, `project_title`, `project_description`, 'linkedin_username'

If you want to use markdown or HTML but you are not familiar check: https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- if you want different custom or unique shields see https://shields.io/category/build  -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- there is no way to align things when using Markdown, so in these instances we use HTML -->
<!-- if you want to use a logo, make sure to upload your logo to your repo, or link to another place where it's online -->

<br />
<p align="center">
  <a href="https://github.com/github_username/repo/">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> 

<h3 align="center">project_title</h3>

<h4 align="center">project_description</h4>

<!-- I think the table of contents is cleaner and more readable in markdown, so using markdown for these parts
the basics are, put whatever you want to show up in [] put whatever you want to link to in () the linking part cannot
have any spaces/characters, replaces spaces with - (_ does not work) the numbering should be indiferent (as you can see below) -->

**Table of Contents**
  
1. [About the project](#about-the-project)
    - [Built With](#built-with)
2. [Getting started](#getting-started)
    - [Prerequisites](#prerequisites)  
    - [Installation](#installation)  
3. [Roadmap](#roadmap)
3. [Contributing](#contributing)
3. [License](#license)
3. [Contact](#contact)
3. [Acknowledgement](#acknowledgement)
3. [Usage](#usage)




<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)




### Built With

* []()
* []()
* []()



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* npm
  ```sh
  npm install npm@latest -g
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo/.git
   ```
2. Install NPM packages
   ```sh
   npm install
   ```



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/github_username/repo/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - email

Project Link: [https://github.com/github_username/repo/](https://github.com/github_username/repo/)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* []()
* []()
* []()





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo/.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo/.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo/.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo/.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo/.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username


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
