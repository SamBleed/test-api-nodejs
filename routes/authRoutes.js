const express = require('express');
const router = express.Router();

// Ruta de ejemplo para login
router.post('/login', (req, res) => {
  const { username, password } = req.body;
  
  // Aquí podrías hacer la lógica real
  if (username === 'admin' && password === '1234') {
    return res.json({ message: '✅ Login exitoso' });
  } else {
    return res.status(401).json({ message: '❌ Credenciales inválidas' });
  }
});

module.exports = router;
