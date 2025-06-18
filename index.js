require('dotenv').config();
const express = require('express');
const cors = require('cors');
const userRoutes = require('./routes/userRoutes');
const authRoutes = require('./routes/authRoutes');
const productRoutes = require('./routes/productRoutes');
require('./config/db'); // ← esto es suficiente para conectar

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (req, res) => {
    res.send('¡Bienvenido a la API Node.js + Docker! 🚀');
});

app.use('/api/users', userRoutes);
app.use('/api/auth', authRoutes);
app.use('/api/products', productRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`🚀 API corriendo en http://localhost:${PORT}`));
