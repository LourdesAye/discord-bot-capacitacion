# 🤖 Discord Bot de Capacitación  

Este proyecto es una versión personalizada del bot de [Tech With Tim](https://github.com/techwithtim/Python-Discord-Bot), adaptado para aprendizaje y prácticas personales.  

Permite interactuar con servidores de Discord mediante comandos personalizados y lógica programada en Python.  

---

## 📦 Tecnologías utilizadas  

- Python 3.10+  
- [discord.py](https://pypi.org/project/discord.py/)  
- [python-dotenv](https://pypi.org/project/python-dotenv/)  
- Git + GitHub  

---

## 🚀 Instalación  

1. Cloná el repositorio:  

```
git clone https://github.com/LourdesAye/discord-bot-capacitacion.git   
cd discord-bot-capacitacion  
```  
  
2. Ejecutá el script de setup 

    1.  Desde Git Bash (recomendado): 
    ```
    ./setup.sh
    ```   
    2.  Desde Windows (CMD o PowerShell):    
    ```
    setup.bat
    ```  

3. Configurar variables de entorno (.env)    

    El proyecto requiere un archivo .env con las siguientes variables:

```  
DISCORD_TOKEN=         # Token de tu bot de Discord
COMMAND_PREFIX=!       # Prefijo para los comandos (por ejemplo: ! o $)
DEFAULT_CHANNEL_ID=    # ID de canal por defecto (opcional)
DEBUG=True             # Modo de depuración (True/False)
```    

    ⚠️ Nunca se sube el .env a GitHub (contiene información sensible). El archivo .env.example es el modelo compartible.  


4. Activar el entorno virtual  
    1. Desde PowerShell:     

    ```
    .\venv\Scripts\activate.ps1     
    ```  

    2. Desde Git Bash:      
    ```  
    source venv/Scripts/activate  
    ```  

5. Corré el bot    
```  
python main.py     
```  
  
## 📚 Créditos
Basado en: [Tech With Tim - Python Discord Bot](https://github.com/techwithtim/Python-Discord-Bot)   
Personalizado por [Lourdes Ayelén González](https://github.com/LourdesAye) para prácticas académicas y aprendizaje continuo.  
  
## 📝 Licencia  
Este proyecto se comparte con fines educativos.  