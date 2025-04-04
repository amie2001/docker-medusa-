const express = require('express');
const app = express();
const PORT = process.env.PORT || 9000;

app.get('/', (req, res) => {
    res.send('Medusa Backend is Running!');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

