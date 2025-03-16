# datosIA


---

### **📌 Explicación del contenido**
✔ **Descripción clara del proyecto**  
✔ **Estructura de archivos del proyecto**  
✔ **Pasos de instalación y configuración**  
✔ **Explicación de los endpoints de la API**  
✔ **Mejoras futuras y licencia**  

---

### **📌 Crear automáticamente el archivo con un script**
Si quieres que este `README.md` se cree automáticamente al ejecutar el script `setup_datosIA.sh`, **agrega esto al final** de ese script:  

```bash
cat <<EOL > datosIA/README.md
# 📊 Proyecto datosIA

Este proyecto es una aplicación web con un **frontend en React o Vue**, un **backend en Node.js con Express** y una **base de datos NoSQL MongoDB**. También integra la **API de OpenAI** para la clasificación de datos en formularios.

## 🚀 Tecnologías utilizadas
- **Backend**: Node.js + Express.js
- **Frontend**: React.js / Vue.js (con Vite)
- **Base de datos**: MongoDB + Mongoose
- **API IA**: OpenAI (GPT-4)
- **Despliegue**: Docker, Nginx

## ⚙️ Instalación y ejecución
1. **Clonar el repositorio**
   \`\`\`bash
   git clone https://github.com/tu-usuario/datosIA.git
   cd datosIA
   \`\`\`

2. **Configurar el backend**
   \`\`\`bash
   cd backend
   npm install
   cp .env.example .env
   node index.js
   \`\`\`

3. **Configurar el frontend**
   \`\`\`bash
   cd frontend
   npm install
   npm run dev
   \`\`\`

4. **Ejecutar MongoDB con Docker**
   \`\`\`bash
   docker-compose up -d
   \`\`\`

## 🔗 API Endpoints
**POST /api/openai/classify**  
Body:
   \`\`\`json
   {
      "text": "Ejemplo de texto a clasificar"
   }
   \`\`\`
Response:
   \`\`\`json
   {
      "category": "Categoría clasificada por IA"
   }
   \`\`\`

## 📝 Licencia
Este proyecto está bajo la **Licencia MIT**.
EOL

echo "✅ Archivo README.md generado exitosamente."
