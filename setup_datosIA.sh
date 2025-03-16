#!/bin/bash

# Nombre del proyecto
PROJECT_NAME="datosIA"

echo "🚀 Creando estructura de archivos para $PROJECT_NAME..."

# Crear la estructura de carpetas
mkdir -p $PROJECT_NAME/{backend,frontend,database,scripts}
mkdir -p $PROJECT_NAME/backend/{controllers,models,routes,services,config,middleware}
mkdir -p $PROJECT_NAME/frontend/{src/components,src/pages,public}

# Archivos del backend
touch $PROJECT_NAME/backend/{index.js,.env,package.json}
touch $PROJECT_NAME/backend/controllers/{formController.js,openaiController.js}
touch $PROJECT_NAME/backend/models/Form.js
touch $PROJECT_NAME/backend/routes/{formRoutes.js,openaiRoutes.js}
touch $PROJECT_NAME/backend/services/openaiService.js
touch $PROJECT_NAME/backend/config/db.js
touch $PROJECT_NAME/backend/middleware/errorHandler.js

# Archivos del frontend
touch $PROJECT_NAME/frontend/{package.json,vite.config.js}
touch $PROJECT_NAME/frontend/src/{App.js,main.js}
touch $PROJECT_NAME/frontend/src/pages/FormPage.js
touch $PROJECT_NAME/frontend/src/components/Form.js
touch $PROJECT_NAME/frontend/public/index.html

# Otros archivos
touch $PROJECT_NAME/database/seed.js
touch $PROJECT_NAME/docker-compose.yml
touch $PROJECT_NAME/nginx.conf
touch $PROJECT_NAME/README.md

echo "✅ Estructura de archivos creada exitosamente en $PROJECT_NAME/"

# Mostrar la estructura creada (requiere el paquete tree)
if command -v tree &> /dev/null
then
    tree $PROJECT_NAME
else
    echo "🔔 Consejo: instala tree con 'sudo apt install tree' para visualizar la estructura."
fi
