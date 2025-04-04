# 🕵️‍♂️ K4L1NUX-OSINT

![Bash](https://img.shields.io/badge/bash-%23121011.svg?style=flat&logo=gnu-bash&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/status-Active-brightgreen)

---

> 🕵️‍♂️ Herramienta de recolección pasiva de inteligencia sobre correos electrónicos.  
> Diseñada para operadores de Red Team, investigadores de amenazas y hackers éticos.

---

## 🚀 ¿Qué hace?

K4L1NUX-OSINT automatiza la búsqueda de información pública relacionada a una cuenta de Gmail. Integra potentes herramientas OSINT en un solo script, permitiendo:

- 🔎 Verificar si un correo está registrado en servicios populares (Holehe)
- 🛡️ Consultar la reputación del correo (EmailRep)
- 🧬 Obtener metadatos e información pública del ecosistema Google (GHunt)

Todo desde una consola, sin levantar sospechas y con resultados rápidos.

---

## 🧰 Herramientas utilizadas

| Herramienta  | Función                                            |
|--------------|-----------------------------------------------------|
| Holehe       | Verifica si un correo está registrado en múltiples sitios web |
| EmailRep     | Consulta reputación y metadatos del correo          |
| GHunt        | Realiza fingerprinting de cuentas Google            |

---

## 📸 Captura de pantalla 

---

- 🧪 Ejemplo de uso
```bash
./osint_correo.sh ejemplo@gmail.com
```
---


- ⚙️ Instalación
```bash
git clone https://github.com/DarkHater01/K4L1NUX-OSINT.git
cd K4L1NUX-OSINT
chmod +x install.sh
./install.sh
```
---

📁 Estructura del proyecto
```bash
K4L1NUX-OSINT/
├── osint_correo.sh        # Script principal con banner y análisis OSINT
├── install.sh             # Script de instalación automática
├── README.md              # Este archivo 🔥
├── LICENSE                # Licencia MIT
├── screenshot.png         # Imagen de ejemplo real de la herramienta
└── .gitignore             # Ignora archivos no deseados
```

---
🛡️ Disclaimer
Esta herramienta fue creada con fines educativos y éticos.
El uso indebido de este script en sistemas o correos sin autorización es ilegal.
El autor no se hace responsable por los daños derivados del uso indebido.

📚 Úsalo como hacker ético. Aprende, entrena, mejora.
---


