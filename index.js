import http from 'http';
import express from 'express';


const app = express();

app.get('/', (req, res) => {
    console.log("Poem website");

    
});

console.log("Server created and starting....");
app.listen(3000);