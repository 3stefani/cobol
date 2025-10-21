# ⭐Banking Management System in COBOL⭐

[![COBOL](https://img.shields.io/badge/COBOL-3.2-blue)](https://gnucobol.sourceforge.io/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Status](https://img.shields.io/badge/status-active-success)]()

**Read this in other languages:** [Español](README.es.md)

Console application developed in COBOL that simulates basic banking operations. Project created as part of my preparation to work in the mainframe sector and legacy technologies.

## Project Overview

Simplified banking system that allows managing a checking account with fundamental operations: balance inquiries, deposits, and withdrawals. Includes business validations to ensure transaction integrity.

**✨ Context:** This project was developed as preparation for a COBOL/Mainframe programming job opportunity, demonstrating autonomous learning capacity and familiarization with legacy technologies widely used in the banking sector.

## Features

| Function | Description |
|---------|-------------|
| **Balance inquiry** | View current account balance |
| **Cash deposit** | Add funds with positive amount validation |
| **Cash withdrawal** | Extract funds with insufficient balance control |
| **Validations** | Control of negative amounts and balance availability |
| **Interactive interface** | Console menu with options |

## Demo

```
*** BANKING SYSTEM - ACCOUNT MANAGEMENT ***

Account: 1234567890
Holder: SAMPLE CLIENT
Type: CHECKING
==================================

1-Inquiry 2-Deposit 3-Withdraw 4-Exit
2
--- CASH DEPOSIT ---
Amount to deposit: 
100.00
Operation completed successfully
New balance: 1100.00 EUR
```

## Technologies Used

- **Language:** COBOL (free format)
- **Standard:** COBOL-85
- **Compiler:** GnuCOBOL 3.2
- **Development environment:** Visual Studio Code
- **Operating system:** Windows 10

## Prerequisites

To compile and run this project you need:

- GnuCOBOL 3.2 or higher
  - **Windows:** [Download from Arnold Trembley](https://www.arnoldtrembley.com/GnuCOBOL.htm)
  - **Linux:** `sudo apt-get install gnucobol`
  - **macOS:** `brew install gnucobol`

## Installation and Usage

### Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/sistema-bancario-cobol.git
cd sistema-bancario-cobol
```

### Compile the program

```bash
cobc -x -free banco-simple.cob
```

### Run

**Windows:**
```cmd
banco-simple.exe
```

**Linux/macOS:**
```bash
./banco-simple
```

## Testing

The program has been tested with the following cases:

- Initial balance inquiry
- Deposit of valid amounts (positive)
- Withdrawal within available balance

## Project Structure

```
sistema-bancario-cobol/
│
├── banco-simple.cob          # Main source code
├── README.md                 # This file (English)
├── README.es.md              # Spanish version
│
└── screenshots/              # Screenshots
    ├── menu-principal.jpg    # Main menu
    ├── consulta-saldo.jpg    # Balance inquire
    ├── ingreso.jpg           # Deposit
    └── retirada.jpg          # Withdrawal
```
## COBOL Concepts Implemented

### Program Divisions
- **IDENTIFICATION DIVISION:** Program metadata
- **ENVIRONMENT DIVISION:** Environment configuration
- **DATA DIVISION:** Data structure definition
- **PROCEDURE DIVISION:** Program logic

### Data Types
```cobol
PIC 9(10)      - 10-digit integers
PIC 9(7)V99    - Decimal numbers (7 integers + 2 decimals)
PIC X(30)      - 30-character alphanumeric strings
```

### Control Flow
- `PERFORM`: Procedure calls
- `EVALUATE`: Multiple decision structure (similar to switch/case)
- `IF-ELSE`: Conditionals
- `UNTIL`: Loops with condition

### Arithmetic Operations
- `ADD ... TO`: Accumulative addition
- `SUBTRACT ... FROM`: Subtraction
- `MOVE`: Value assignment

## Professional Application

This project demonstrates:

1. **Learning ability:** Learned COBOL autonomously for this application
2. **Banking business logic understanding:** Implementation of financial validations
3. **Maintainable code:** Clear structure with well-defined procedures
4. **Mainframe preparation:** Familiarization with financial sector legacy technologies

## About the Author

**Estefanía Ramírez Martínez**

✨Higher Level Training Cycle in Application Development  
✨Seeking opportunities in the technology sector  

**Contact:**
- LinkedIn: [estefaniazerimar](https://www.linkedin.com/in/estefaniazerimar/)
- Portfolio: [DiarioHacking](https://diariohacking.com/)
- GitHub: [3stefani](https://github.com/3stefani)

## 📄 License

This project is under the MIT License - see the [LICENSE](LICENSE) file for more details.

## Acknowledgments

- GnuCOBOL community for providing an open-source compiler
- Arnold Trembley for GnuCOBOL builds for Windows
- Mainframe and legacy COBOL educational resources

## Learning Resources

If you want to learn COBOL, these resources were helpful to me:

- [GnuCOBOL FAQ](https://gnucobol.sourceforge.io/faq/index.html)
- [GnuCOBOL Programmer's Guide](https://gnucobol.sourceforge.io/guides.html)
- [Mainframe Tutorial](https://www.tutorialspoint.com/cobol/index.htm)

---


