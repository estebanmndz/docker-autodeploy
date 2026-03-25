#!/bin/bash

LOG_FILE="deploy.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# =========================
# VALIDACIONES
# =========================
if [ "$EUID" -ne 0 ]; then
  echo "❌ Ejecuta como root (sudo)"
  exit
fi

log "🚀 Iniciando despliegue Docker..."

# =========================
# INSTALAR DOCKER (si no existe)
# =========================
if ! command -v docker &> /dev/null; then
    log "📦 Instalando Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
else
    log "✔️ Docker ya instalado"
fi

# =========================
# CONFIGURAR USUARIO
# =========================
usermod -aG docker $SUDO_USER

# =========================
# DOCKER COMPOSE (plugin moderno)
# =========================
if ! docker compose version &> /dev/null; then
    log "📦 Instalando Docker Compose plugin..."
    apt-get install docker-compose-plugin -y
else
    log "✔️ Docker Compose ya disponible"
fi

# =========================
# CREAR COMPOSE FILE (si no existe)
# =========================
if [ ! -f docker-compose.yml ]; then
    log "📝 Creando docker-compose.yml..."

    cat <<EOF > docker-compose.yml
version: "3.8"
services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
    restart: always
EOF
else
    log "✔️ docker-compose.yml ya existe"
fi

# =========================
# DESPLIEGUE
# =========================
log "🐳 Desplegando contenedor..."

docker compose up -d

# =========================
# STATUS
# =========================
docker ps

log "✅ Despliegue completado"
