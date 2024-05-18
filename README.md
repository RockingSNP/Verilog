# COA Projects

This repository contains a collection of projects developed for the Computer Organization and Architecture (COA) course. Each project focuses on a different fundamental component of digital systems. Below is an overview of each project included in this repository.

## Table of Contents
- [Projects](#projects)
  - [4-bit Adder-Cum-Subtractor](#4-bit-adder-cum-subtractor)
  - [1-bit 3-to-8 Decoder](#1-bit-3-to-8-decoder)
  - [1-bit 4-to-1 Multiplexer](#1-bit-4-to-1-multiplexer)
  - [Arithmetic Logic Unit (ALU)](#arithmetic-logic-unit-alu)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Projects

### 4-bit Adder-Cum-Subtractor
This project implements a 4-bit adder-cum-subtractor. The circuit can perform both addition and subtraction based on a control signal. The primary components include:

- 4-bit adder using full adders
- Subtraction implemented using 2's complement
- Control signal to switch between addition and subtraction

#### Files
- `4bit_adder_cum_subtractor.v`: Verilog code for the adder-cum-subtractor

### 1-bit 3-to-8 Decoder
This project designs a 1-bit 3-to-8 decoder. It decodes a 3-bit input into one of eight outputs, with each output corresponding to one of the input combinations.

#### Files
- `1bit_3to8_decoder.v`: Verilog code for the 3-to-8 decoder.
- 
### 1-bit 4-to-1 Multiplexer
This project creates a 1-bit 4-to-1 multiplexer. The multiplexer selects one of four input bits based on two selection lines.

#### Files
- `1bit_4to1_mux.v`: Verilog code for the 4-to-1 multiplexer.

### Arithmetic Logic Unit (ALU)
This project implements an Arithmetic Logic Unit (ALU) capable of performing a variety of arithmetic and logical operations. The ALU supports operations such as addition, subtraction, AND, OR, and XOR.

#### Files
<<<<<<< HEAD
- `alu.v`: Verilog code for the ALU.

=======
- `4bit_opcode_8bit_alu.v`: Verilog code for the ALU.

## Requirements
- Install Iverilog
- Install GTKWave

  
    ### Installation Guide for Icarus Verilog and GTKWave
    
    This guide provides step-by-step instructions for installing Icarus Verilog and GTKWave on various operating systems including Windows, macOS, Fedora, Debian, and other Linux distributions.
    
    #### Table of Contents
    - [Windows](#windows)
    - [macOS](#macos)
    - [Fedora](#fedora)
    - [Debian and Ubuntu](#debian-and-ubuntu)
    - [Other Linux Distributions](#other-linux-distributions)
    
    ##### Windows
    
    1. Download the latest Icarus Verilog installer from the [official website](http://bleyer.org/icarus/).
    2. Run the installer and follow the on-screen instructions.
    3. Check the INstall GTKWave box while Installing.
       
    ##### MacOS
      
    1. Open a terminal window.
    2. Install Homebrew if it is not already installed. Follow the instructions on [Homebrew's official website](https://brew.sh/).
    3. Use Homebrew to install Icarus Verilog & GTKwave:
       ```bash
       brew install icarus-verilog
       bre install gtkwave
       ```    
    ##### Fedora
      
    1. Open a terminal window
    2. Use DNF to install Icarus Verilog & GTKwave:
       ```bash
       sudo dnf install iverilog
       sudo dnf install gtkwave
       ```
    ##### Debian and Ubuntu
            
    1. Open a terminal window.
    2. Use apt to install Icarus Verilog & GTKwave:
       ```bash
       sudo apt install iverilog
       sudo apt install gtkwave
       ```
>>>>>>> ddf36d8 (README Modified and Dir created for Projects)
## Installation
To use the code in this repository, clone the repository to your local machine using the following command:

```bash
git clone https://github.com/RockingSNP/Verilog.git
cd Verilog
```
<<<<<<< HEAD
## Usage
Each project directory contains the Verilog source files and testbenches. To simulate a project, navigate to the project directory and run the simulation using your preferred Verilog simulator. For example, using Icarus Verilog:

```bash
<<<<<<< HEAD
iverilog -o 4bit_adder_cum_subtractor 4bit_adder_cum_subtractor.v
=======
iverilog -o 4bit_adder_cum_subtractor 4bit_adder_cum_subtractor.v 4bit_adder_cum_subtractor_testbench.v
=======

## Usage
Each project directory contains the Verilog source files and testbenches. To simulate a project, navigate to the project directory and run the simulation using your preferred Verilog simulator(e.g GTKwave). For example, using Icarus Verilog:

```bash
iverilog -o 4bit_opcode_8bit_alu 4bit_opcode_8bit_alu.v
>>>>>>> ddf36d8 (README Modified and Dir created for Projects)
>>>>>>> 2f92375 (README Modified and Dir created for Projects)
vvp 4bit_adder_cum_subtractor
```

## Contributing
Contributions to enhance the projects or add new features are welcome.

To contribute:
- **Fork** the repository.
- **Create a new branch**: git checkout -b feature-branch
- **Commit your changes**: git commit -m 'Add new feature'
- **Push to the branch**: git push origin feature-branch
- **Create a Pull Request**

Please ensure your code adheres to the existing coding standards and include relevant test cases.

## License
<<<<<<< HEAD
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


=======
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
>>>>>>> ddf36d8 (README Modified and Dir created for Projects)
