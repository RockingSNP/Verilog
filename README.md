# COA Projects

This repository contains a collection of projects developed for the Computer Organization and Architecture (COA) course. Each project focuses on a different fundamental component of digital systems. Below is an overview of each project included in this repository.

## Table of Contents
- [Projects](#projects)
  - [4-bit Adder-Cum-Subtractor](#4-bit-adder-cum-subtractor)
  - [1-bit 3-to-8 Decoder](#1-bit-3-to-8-decoder)
  - [1-bit 4-to-1 Multiplexer](#1-bit-4-to-1-multiplexer)
  - [Arithmetic Logic Unit (ALU)](#arithmetic-logic-unit-alu)
  - [32-bit Synchronous Register](#32-bit-synchronous-register)
  - [16-bit Shift Register](#16-bit-shift-register)
  - [16-bit Multi-Drop Bus](#16-bit-multi-drop-bus)
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
- [4bit_adder_cum_subtractor.v](https://github.com/RockingSNP/Verilog/blob/main/Ripple_Carry_Adder/4bit_adder_cum_subtractor.v): Verilog code and Testbench code for the adder-cum-subtractor

### 1-bit 3-to-8 Decoder

This project designs a 1-bit 3-to-8 decoder. It decodes a 3-bit input into one of eight outputs, with each output corresponding to one of the input combinations.

#### Files
- [1bit_3to8_decoder.v](https://github.com/RockingSNP/Verilog/blob/main/Decoder/1bit_3to8_decoder.v): Verilog code and Testbench code for the 3-to-8 decoder.
  
### 1-bit 4-to-1 Multiplexer

This project creates a 1-bit 4-to-1 multiplexer. The multiplexer selects one of four input bits based on two selection lines.

#### Files
- [1bit_4to1_mux.v](https://github.com/RockingSNP/Verilog/blob/main/Multiplexer/1bit_4to1_mux.v): Verilog code and Testbench code for the 4-to-1 multiplexer.

### Arithmetic Logic Unit (ALU)

This project implements an Arithmetic Logic Unit (ALU) capable of performing a variety of arithmetic and logical operations. The ALU supports operations such as addition, subtraction, AND, OR, and XOR and All of the above With Negated Operand_2 .

#### Files
- [4bit_opcode_8bit_alu.v](https://github.com/RockingSNP/Verilog/blob/main/Arithmetic_Logic_Unit/4bit_opcode_8bit_alu.v): Verilog code and Testbench code for the ALU.

### 32-bit Synchronous Register
This project develops a 32-bit synchronous register. The register stores 32-bit data and updates its value synchronously with the clock signal.

#### Files
- [32bit_synchronous_register.v](https://github.com/RockingSNP/Verilog/blob/main/Synchronous_Register/32b_sync_reg.v): Verilog code and Testbench code for the synchronous register.

### 16-bit Shift Register
This project creates a 16-bit shift register. The register can shift its stored data left or right based on control signals.

#### Files
- [16bit_shift_register.v](https://github.com/RockingSNP/Verilog/blob/main/Shift_Register/16b_shift_reg.v): Verilog code and Testbench code for the shift register.

### 16-bit Multi-Drop Bus
This project implements a 16-bit multi-drop bus, which allows multiple components(Here's *4*) to communicate over a shared data bus. The design includes bus arbitration to manage access to the bus.

#### Files
- [16bit_multi_drop_bus.v](https://github.com/RockingSNP/Verilog/blob/main/Multi_Drop_Bus/16b_multi_drop_bus.v): Verilog code and Testbench code for the multi-drop bus.

## Requirements
- [Install Icarus Verilog](https://steveicarus.github.io/iverilog/)
- [Install GTKWave](https://gtkwave.sourceforge.net/)
  
    ### Installation Guide for Icarus Verilog and GTKWave
    
    This guide provides step-by-step instructions for installing Icarus Verilog and GTKWave on various operating systems including Windows, macOS, Fedora, Debian, and other Linux distributions.
    
    ### Table of Contents
    - [Windows](#windows)
    - [macOS](#macos)
    - [Fedora](#fedora)
    - [Debian and Ubuntu](#debian-and-ubuntu)
    - [Other Linux Distributions](#other-linux-distributions)
    
    #### **Windows**
    
    1. Download the latest Icarus Verilog installer from the [official website](http://bleyer.org/icarus/).
    2. Run the installer and follow the on-screen instructions.
    3. Check the INstall GTKWave box while Installing.
       
    #### MacOS
      
    1. Open a terminal window.
    2. Install Homebrew if it is not already installed. Follow the instructions on [Homebrew's official website](https://brew.sh/).
    3. Use Homebrew to install Icarus Verilog & GTKwave:
       ```bash
       brew install icarus-verilog
       brew install gtkwave
       ```    
    #### Fedora
      
    1. Open a terminal window
    2. Use DNF to install Icarus Verilog & GTKwave:
       ```bash
       sudo dnf install iverilog
       sudo dnf install gtkwave
       ```
    #### Debian and Ubuntu
            
    1. Open a terminal window.
    2. Use apt to install Icarus Verilog & GTKwave:
       ```bash
       sudo apt install iverilog
       sudo apt install gtkwave
       ```

    #### Other Linux Distributions
            
    1. Open a terminal window.
    2. Download & install Icarus Verilog :
       ```bash
        sudo apt-get install gperf flex bison
        wget ftp://ftp.icarus.com/pub/eda/verilog/v11/verilog-<version>.tar.gz
        tar -xzvf verilog-<version>.tar.gz
        cd verilog-<version>
        ./configure
        make
        sudo make install
       ```
    3. Download & Install GTKWave :
       ```bash
        wget https://gtkwave.sourceforge.io/gtkwave-<version>.tar.gz
        tar -xzvf gtkwave-<version>.tar.gz
        cd gtkwave-<version>
        ./configure
        make
        sudo make install
       ```
   4. Make sure to change this placeholder **version** to the latest stable versions of verilog and gtkwave
  
## Installation
To use the code in this repository, clone the repository to your local machine using the following command:

```bash
git clone https://github.com/RockingSNP/Verilog.git
cd Verilog
```
## Usage
Each project directory contains the Verilog source files and testbenches. To simulate a project, navigate to the project directory and run the simulation using your preferred Verilog simulator. For example, using Icarus Verilog:

```bash
iverilog -o 4bit_adder_cum_subtractor 4bit_adder_cum_subtractor.v
```

## Usage
Each project directory contains the Verilog source files and testbenches. To simulate a project, navigate to the project directory and run the simulation using your preferred Verilog simulator(e.g GTKwave). For example, using Icarus Verilog:

```bash
iverilog -o 4bit_opcode_8bit_alu 4bit_opcode_8bit_alu.v
vvp 4bit_opcode_8bit_alu
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
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
