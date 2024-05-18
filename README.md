# COA Projects

This repository contains a collection of projects developed for the Computer Organization and Architecture (COA) course. Each project focuses on a different fundamental component of digital systems. Below is an overview of each project included in this repository.

## Table of Contents
- [Projects](#projects)
  - [4-bit Adder-Cum-Subtractor](#4-bit-adder-cum-subtractor)
  - [1-bit 3-to-8 Decoder](#1-bit-3-to-8-decoder)
  - [1-bit 4-to-1 Multiplexer](#1-bit-4-to-1-multiplexer)
  - [Arithmetic Logic Unit (ALU)](#arithmetic-logic-unit-alu)
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
- `alu.v`: Verilog code for the ALU.

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
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.


