#!/bin/bash

echo "🔧 Iniciando setup del proyecto..."

# Crear .env si no existe
if [ ! -f .env ]; then
    echo "⚠️  No existe .env, creando uno base..."
    cat <<EOL > .env
DISCORD_TOKEN=
COMMAND_PREFIX=!
DEFAULT_CHANNEL_ID=
DEBUG=True
EOL
else
    echo "✅ .env ya existe."
fi

# Crear .env.example desde .env
if [ -f .env ] && [ ! -f .env.example ]; then
    echo "📝 Creando .env.example..."
    grep -v '^#' .env | sed 's/=.*$/=/' > .env.example
fi

# Agregar .env a .gitignore si no está
if [ ! -f .gitignore ]; then
    echo "🛡️  Creando .gitignore..."
    echo ".env" > .gitignore
elif ! grep -q "^.env$" .gitignore; then
    echo "🛡️  Agregando .env a .gitignore..."
    echo ".env" >> .gitignore
fi

# Crear entorno virtual
if [ ! -d "venv" ]; then
    echo "🐍 Creando entorno virtual..."
    python -m venv venv
else
    echo "✅ Entorno virtual ya existe."
fi

# Activar entorno virtual
echo "⚙️  Activando entorno virtual..."
source venv/Scripts/activate

# Instalar dependencias si hay requirements.txt
if [ -f requirements.txt ]; then
    echo "📦 Instalando dependencias desde requirements.txt..."
    pip install -r requirements.txt
else
    echo "❌ No se encontró requirements.txt."
fi

echo "✅ Setup completo. ¡Listo para trabajar, Lourdes! 😎"
