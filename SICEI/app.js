const express = require('express');
const app = express();
const port = 3000;

const alumnos = [
    { nombre: 'Becky Zhu', matricula: 'A15001597' },
    { nombre: 'Alice francois', matricula: 'A12345678' },
    { nombre: 'Hebert Negron', matricula: '15001887' },
    { nombre: 'Pio pio', matricula: 'A11111111' }
];

const profesores = [
    { nombre: 'Edwin ', numeroEmpleado: '001' },
    { nombre: 'Victor', numeroEmpleado: '002' },
    { nombre: 'Julio', numeroEmpleado: '003' },
    { nombre: 'Eduardo', numeroEmpleado: '004' }
];

app.get('/alumnos', (req, res) => {
    res.json(alumnos);
});

app.get('/profesores', (req, res) => {
    res.json(profesores);
});

app.listen(port, () => {
    console.log(`SICEI app listening at http://localhost:${port}`);
});