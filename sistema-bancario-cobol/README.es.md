# ⭐Sistema de Gestión Bancaria en COBOL⭐

[![COBOL](https://img.shields.io/badge/COBOL-3.2-blue)](https://gnucobol.sourceforge.io/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Status](https://img.shields.io/badge/status-active-success)]()

**Leer en otros idiomas:** [English](Readme.md)

Aplicación de consola desarrollada en COBOL que simula operaciones bancarias básicas. Proyecto creado como parte de mi preparación para trabajar en el sector mainframe y tecnologías legacy.

## Descripción del Proyecto

Sistema bancario simplificado que permite gestionar una cuenta corriente con operaciones fundamentales: consultas de saldo, ingresos y retiradas de efectivo. Incluye validaciones de negocio para garantizar la integridad de las transacciones.

**Contexto:** Este proyecto fue desarrollado como preparación para una oferta laboral en programación COBOL/Mainframe, demostrando capacidad de aprendizaje autónomo y familiarización con tecnologías legacy ampliamente utilizadas en el sector bancario.

## Funcionalidades

| Función | Descripción |
|---------|-------------|
| **Consulta de saldo** | Visualización del saldo actual de la cuenta |
| **Ingreso de efectivo** | Añadir fondos con validación de importes positivos |
| **Retirada de efectivo** | Extraer fondos con control de saldo insuficiente |
| **Validaciones** | Control de importes negativos y disponibilidad de saldo |
| **Interfaz interactiva** | Menú de opciones por consola |

## Demo

```
*** SISTEMA BANCARIO - GESTION DE CUENTAS ***

Cuenta: 1234567890
Titular: CLIENTE EJEMPLO
Tipo: CORRIENTE
==================================

1-Consultar 2-Ingresar 3-Retirar 4-Salir
2
--- INGRESO DE EFECTIVO ---
Importe a ingresar: 
100.00
Operacion realizada con exito
Nuevo saldo: 1100.00 EUR
```

## Tecnologías Utilizadas

- **Lenguaje:** COBOL (formato libre)
- **Estándar:** COBOL-85
- **Compilador:** GnuCOBOL 3.2
- **Entorno de desarrollo:** Visual Studio Code
- **Sistema operativo:** Windows 10

## Requisitos Previos

Para compilar y ejecutar este proyecto necesitas:

- GnuCOBOL 3.2 o superior
  - **Windows:** [Descargar desde Arnold Trembley](https://www.arnoldtrembley.com/GnuCOBOL.htm)
  - **Linux:** `sudo apt-get install gnucobol`
  - **macOS:** `brew install gnucobol`

## Instalación y Uso

### Clonar el repositorio

```bash
git clone https://github.com/TU-USUARIO/sistema-bancario-cobol.git
cd sistema-bancario-cobol
```

### Compilar el programa

```bash
cobc -x -free banco-simple.cob
```

### Ejecutar

**Windows:**
```cmd
banco-simple.exe
```

**Linux/macOS:**
```bash
./banco-simple
```

## Pruebas Realizadas

El programa ha sido probado con los siguientes casos:

- Consulta de saldo inicial
- Ingreso de cantidades válidas (positivas)
- Retirada dentro del saldo disponible

## Estructura del Proyecto

```
sistema-bancario-cobol/
│
├── banco-simple.cob          # Código fuente principal
├── README.md                 # Versión en inglés
├── README.es.md              # Este archivo (Español)
├── LICENSE                   # Licencia MIT
│
└── screenshots/              # Capturas de pantalla
    ├── menu-principal.jpg
    ├── consulta-saldo.jpg
    ├── ingreso.jpg
    └── retirada.jpg
```

## Conceptos COBOL Implementados

### Divisiones del Programa
- **IDENTIFICATION DIVISION:** Metadatos del programa
- **ENVIRONMENT DIVISION:** Configuración del entorno
- **DATA DIVISION:** Definición de estructuras de datos
- **PROCEDURE DIVISION:** Lógica del programa

### Tipos de Datos
```cobol
PIC 9(10)      - Números enteros de 10 dígitos
PIC 9(7)V99    - Números decimales (7 enteros + 2 decimales)
PIC X(30)      - Cadenas alfanuméricas de 30 caracteres
```

### Control de Flujo
- `PERFORM`: Llamadas a procedimientos
- `EVALUATE`: Estructura de decisión múltiple (similar a switch/case)
- `IF-ELSE`: Condicionales
- `UNTIL`: Bucles con condición

### Operaciones Aritméticas
- `ADD ... TO`: Suma acumulativa
- `SUBTRACT ... FROM`: Resta
- `MOVE`: Asignación de valores

## Aplicación Profesional

Este proyecto demuestra:

1. **Capacidad de aprendizaje:** Aprendí COBOL de forma autónoma para esta aplicación
2. **Comprensión de lógica de negocio bancaria:** Implementación de validaciones financieras
3. **Código mantenible:** Estructura clara con procedimientos bien definidos
4. **Preparación para mainframe:** Familiarización con tecnologías legacy del sector financiero

## Sobre la Autora

**Estefanía Ramírez Martínez**

✨ Ciclo Formativo de Grado Superior en Desarrollo de Aplicaciones  
✨En búsqueda de oportunidades en el sector tecnológico  

**Contacto:**
- LinkedIn: [estefaniazerimar](https://www.linkedin.com/in/estefaniazerimar/)
- Portfolio: [DiarioHacking](https://diariohacking.com/)
- GitHub: [3stefani](https://github.com/3stefani)

## Licencia

Este proyecto está bajo la Licencia MIT - consulta el archivo [LICENSE](LICENSE) para más detalles.

## Agradecimientos

- Comunidad de GnuCOBOL por proporcionar un compilador de código abierto
- Arnold Trembley por las builds de GnuCOBOL para Windows
- Recursos educativos de mainframe y COBOL legacy

## Recursos de Aprendizaje

Si quieres aprender COBOL, estos recursos me fueron útiles:

- [GnuCOBOL FAQ](https://gnucobol.sourceforge.io/faq/index.html)
- [GnuCOBOL Programmer's Guide](https://gnucobol.sourceforge.io/guides.html)
- [Mainframe Tutorial](https://www.tutorialspoint.com/cobol/index.htm)

---

⭐ **Si este proyecto te resulta útil o interesante, ¡dale una estrella!**

💬 **¿Preguntas o sugerencias?** Abre un issue o contáctame directamente.

🚀 **Desarrollado con interés genuino por las tecnologías legacy y el sector financiero.**
