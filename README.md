# 🚀 Docker Auto-Deploy (NGINX + Docker Compose)

## 🧠 Descripción

Este proyecto automatiza la instalación de Docker y el despliegue de un contenedor NGINX utilizando Docker Compose, simulando un flujo básico de despliegue en entornos DevOps.

El script incluye validaciones, logging y ejecución idempotente, permitiendo reutilizarlo en múltiples entornos.

---

## 🚀 Caso de uso

* Laboratorios de Docker
* Entornos de desarrollo rápidos
* Automatización de despliegues básicos
* Introducción a prácticas DevOps

---

## ⚙️ Características técnicas

* Instalación automática de Docker (si no existe)
* Uso de Docker Compose (plugin moderno)
* Creación dinámica de `docker-compose.yml`
* Despliegue automático de contenedor NGINX
* Logging de ejecución
* Script idempotente

---

## 🐳 Arquitectura

```
Host Linux
│
├── Docker Engine
├── Docker Compose
│
└── Contenedor NGINX
     └── Puerto 80 expuesto
```

---

## ▶️ Uso

```bash id="vbb2f6"
sudo chmod +x deploy.sh
sudo ./deploy.sh
```

---

## 📊 Output

```id="0ngm59"
🚀 Iniciando despliegue Docker...
📦 Instalando Docker...
🐳 Desplegando contenedor...
CONTAINER ID   IMAGE     STATUS
...
✅ Despliegue completado
```

Se genera un fichero `deploy.log` con el detalle de ejecución.

---

## ⚠️ Consideraciones

* Ejecutar como root
* Puede requerir reinicio de sesión para aplicar grupo docker
* Uso recomendado en entornos de laboratorio o desarrollo

---

## 🚀 Mejoras futuras

* Despliegue de múltiples servicios
* Integración con CI/CD pipelines
* Uso de imágenes personalizadas
* Reverse proxy (NGINX + SSL)
* Integración con Kubernetes
