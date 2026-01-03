# PIN Diplomatura DevOps – GRUPO 1 – Proyecto 1

## CI/CD con GitHub Actions, Terraform, Docker y Observabilidad

---

## 📌 Descripción general

Este proyecto corresponde al **Proyecto N.º 1 del Grupo 1** de la **Diplomatura DevOps**.
El objetivo principal es demostrar, de forma práctica, la integración de herramientas fundamentales del ecosistema DevOps mediante la creación de una aplicación simple y su automatización completa, incluyendo seguridad y observabilidad.

El proyecto incluye:

* Una aplicación **Node.js** básica
* Containerización con **Docker**
* Orquestación local con **Docker Compose**
* Infraestructura como código con **Terraform**
* Automatización de **Integración Continua (CI)** con **GitHub Actions**
* **SBOM** (Software Bill of Materials) para seguridad
* **Observabilidad** con **Prometheus** y **Grafana**

---

## 👥 Integrantes – Grupo 1

* Arevalo Boggio, Pablo
* Leiter, Ezequiel
* Marzialetti, Juan Antonio
* Rocco, Francisco
* Zanone, Pablo Andrés

---

## 🎯 Objetivos del proyecto

* Desarrollar una aplicación funcional mínima en Node.js
* Empaquetar la aplicación en un contenedor Docker
* Gestionar el despliegue del contenedor mediante Terraform
* Versionar el código en GitHub
* Implementar un pipeline de CI que valide la construcción del proyecto
* Incorporar prácticas de **seguridad** mediante SBOM
* Implementar **observabilidad** y dashboards con métricas

---

## 🛠️ Tecnologías utilizadas

* **Node.js** – Aplicación backend
* **Docker** – Containerización
* **Docker Compose** – Orquestación local
* **Terraform** – Infraestructura como Código (IaC)
* **Git & GitHub** – Control de versiones
* **GitHub Actions** – CI/CD
* **Prometheus** – Recolección de métricas
* **Grafana** – Visualización y dashboards
* **CycloneDX** – Generación de SBOM

---

## 📂 Estructura del proyecto

```
.
├── app.js                    # Aplicación Node.js con métricas
├── package.json              # Dependencias y scripts
├── package-lock.json         # Lockfile
├── Dockerfile                # Imagen Docker de la app
├── docker-compose.yml        # Stack App + Prometheus + Grafana
├── main.tf                   # Terraform
├── prometheus.yml            # Configuración de Prometheus
├── sbom.json                 # SBOM (CycloneDX)
├── README.md                 # Documentación
├── .gitignore                # Archivos ignorados
├── .github/
│   └── workflows/
│       └── ci.yml            # Pipeline CI
└── docs/
    └── screenshots/          # Evidencias visuales
```

---

## 📋 Requisitos previos

Para ejecutar y validar el proyecto se requiere:

* **Docker Desktop** (en ejecución)
* **Terraform v1.5+**
* **Node.js v18+** (solo para ejecución sin Docker)
* **Git** (opcional, para clonar el repositorio)

Sistemas probados:

* macOS
* Linux

⚠️ Docker debe estar iniciado antes de usar Terraform o Docker Compose.

---

## ▶️ Ejecución local

### 1️⃣ Ejecutar la aplicación sin Docker

```bash
npm install
node app.js
```

Accesos:

* App: [http://localhost:3000](http://localhost:3000)
* Métricas: [http://localhost:3000/metrics](http://localhost:3000/metrics)

---

### 2️⃣ Ejecutar la aplicación con Docker

```bash
docker build -t pin-grupo-1-proyecto-1 .
docker run -p 3000:3000 pin-grupo-1-proyecto-1
```

---

### 3️⃣ Ejecutar con Terraform

```bash
terraform init
terraform apply
```

Confirmar con `yes` cuando sea solicitado.

---

### 4️⃣ Ejecutar Prometheus y Grafana con Docker Compose

```bash
docker compose up --build
```

Accesos:

* Aplicación: [http://localhost:3000](http://localhost:3000)
* Métricas: [http://localhost:3000/metrics](http://localhost:3000/metrics)
* Prometheus: [http://localhost:9090](http://localhost:9090)
* Grafana: [http://localhost:3001](http://localhost:3001)

Credenciales Grafana:

* Usuario: `admin`
* Password: `admin`

---

## 🔍 Validaciones esperadas

* Prometheus → **Status > Targets** → `node_app` en estado **UP**
* Grafana → Data Source Prometheus conectado
* Dashboard con métricas visibles
* Docker container corriendo correctamente
* Terraform aplica la infraestructura sin errores

---

## 📸 Evidencias

Las capturas de pantalla que validan el funcionamiento se encuentran en:

```
/docs/screenshots
```

Incluyen:

* Targets de Prometheus en estado UP
* Data Source de Grafana funcionando
* Dashboard con métricas visibles

---

## 🔐 Seguridad – SBOM

Se generó un **SBOM (Software Bill of Materials)** utilizando **CycloneDX**, que enumera las dependencias y componentes del proyecto.

Archivo:

```
sbom.json
```

---

## 🔄 Integración Continua (CI)

El proyecto cuenta con un pipeline de **GitHub Actions** que se ejecuta automáticamente en cada `push` a la rama `main`.

El pipeline realiza:

* Checkout del repositorio
* Build de la imagen Docker

Esto permite validar que el proyecto es construible de manera automática ante cada cambio.

---

## ✅ Resultados obtenidos

* Aplicación funcional en Node.js
* Contenedor Docker operativo
* Infraestructura reproducible mediante Terraform
* Observabilidad implementada con Prometheus y Grafana
* Métricas visibles en dashboards
* SBOM generado y documentado
* Pipeline de CI funcionando correctamente

---

## 🔗 Repositorio

[https://github.com/pol-zanone/pin-grupo-1-proyecto-1](https://github.com/pol-zanone/pin-grupo-1-proyecto-1)

---

## 👤 Autor / Grupo

**Grupo 1 – Diplomatura DevOps**

Integrantes:

* Arevalo Boggio, Pablo
* Leiter, Ezequiel
* Marzialetti, Juan Antonio
* Rocco, Francisco
* Zanone, Pablo Andrés

Proyecto realizado en el marco de la **Diplomatura DevOps**.

---

## 📎 Notas finales

Este proyecto tiene fines educativos y demuestra un flujo DevOps completo, incluyendo **CI/CD**, **seguridad** y **observabilidad**, alineado con buenas prácticas profesionales y reproducibilidad del entorno.
