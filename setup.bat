@echo off
echo 🔧 Iniciando setup del proyecto...

REM Crear .env si no existe
IF NOT EXIST .env (
    echo ⚠️  No existe .env, creando uno base...
    (
        echo DISCORD_TOKEN=
        echo COMMAND_PREFIX=!
        echo DEFAULT_CHANNEL_ID=
        echo DEBUG=True
    ) > .env
) ELSE (
    echo ✅ .env ya existe.
)

REM Crear .env.example si no existe
IF EXIST .env (
    IF NOT EXIST .env.example (
        echo 📝 Creando .env.example...
        for /f "usebackq tokens=1 delims==" %%A in (`findstr /v "^#.*" .env`) do (
            echo %%A=>>.env.example
        )
    )
)

REM Crear o actualizar .gitignore
IF NOT EXIST .gitignore (
    echo 🛡️  Creando .gitignore...
    echo .env > .gitignore
) ELSE (
    findstr /x ".env" .gitignore >nul || echo .env >> .gitignore
)

REM Crear entorno virtual
IF NOT EXIST venv (
    echo 🐍 Creando entorno virtual...
    python -m venv venv
) ELSE (
    echo ✅ Entorno virtual ya existe.
)

REM Activar entorno virtual y instalar requirements
call venv\Scripts\activate.bat
IF EXIST requirements.txt (
    echo 📦 Instalando dependencias desde requirements.txt...
    pip install -r requirements.txt
) ELSE (
    echo ❌ No se encontró requirements.txt.
)

echo ✅ Setup completo. ¡Listo para trabajar, Lourdes! 😎
pause
