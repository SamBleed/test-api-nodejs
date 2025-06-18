````markdown
# 🚀 test-api-nodejs

API RESTful construida con **Node.js**, **Express** y **MySQL**, diseñada con estructura profesional y lista para producción, testing o aprendizaje.

---

## 📦 Características

- CRUD completo para usuarios
- Autenticación con JWT
- Middleware de autenticación y logs
- Conexión con base de datos MySQL
- Docker y Docker Compose listos
- Arquitectura modular por rutas, modelos, controladores y middlewares

---

## ⚙️ Tecnologías

- Node.js
- Express
- MySQL
- Docker / Docker Compose
- JSON Web Tokens (JWT)
- Dotenv
- ESLint (próximamente)

---

## 📁 Estructura del Proyecto

```bash
.
├── config/            # Configuración de la base de datos
├── controllers/       # Lógica del negocio (auth, usuarios, productos, etc.)
├── middleware/        # Middlewares personalizados
├── models/            # Modelos de datos
├── routes/            # Rutas de la API
├── .env               # Variables de entorno
├── Dockerfile         # Imagen de Docker
├── docker-compose.yml # Orquestación de contenedores
├── setup-docker.sh    # Script para levantar entorno en Linux
├── index.js           # Punto de entrada principal
└── README.md
````

---

## 🚀 Cómo ejecutar el proyecto

### ✅ Clonar el repositorio

```bash
git clone git@github.com:SamBleed/test-api-nodejs.git
cd test-api-nodejs
```

### 🔧 Instalar dependencias

```bash
npm install
```

### ⚙️ Crear archivo `.env`

```env
PORT=3000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=tu_clave
DB_NAME=mi_base_de_datos
JWT_SECRET=tu_secreto
```

### 🐳 Usar Docker

```bash
docker-compose up
```

---

## 📮 Endpoints (resumen rápido)

| Método | Endpoint          | Descripción                    |
| ------ | ----------------- | ------------------------------ |
| GET    | `/api/users`      | Obtener todos los usuarios     |
| POST   | `/api/users`      | Crear un nuevo usuario         |
| POST   | `/api/auth/login` | Iniciar sesión y recibir token |

> 🔧 Documentación Swagger próximamente...

---

## 🤝 Contribuciones

¡Contribuciones, ideas y mejoras son bienvenidas!

### Cómo contribuir:

1. Haz un fork del proyecto
2. Crea una rama (`git checkout -b feature/mi-mejora`)
3. Haz tus cambios y haz commit (`git commit -m 'Agrego nueva función'`)
4. Sube tu rama (`git push origin feature/mi-mejora`)
5. Crea un Pull Request

---

## 👥 Comunidad

¿Tienes ideas o mejoras? Únete a la discusión en la pestaña [Discussions](https://github.com/SamBleed/test-api-nodejs/discussions) del repositorio.

También puedes abrir un Issue para reportar bugs o sugerencias.

---

## 🛠️ Próximas mejoras

* [ ] Documentación Swagger
* [ ] Testing con Jest
* [ ] Rate limiting
* [ ] Logging avanzado con Winston
* [ ] Configuración ESLint y Prettier

---

## 📝 Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).

---

## 🙌 Autor

**SamBleed**
GitHub: [@SamBleed](https://github.com/SamBleed)
