const express = require('express');
const app = express();
const port = 3000;
const config = {
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'nodedb'
};

const mysql = require('mysql');
const connection = mysql.createConnection(config);

let tabela = `<table border="1">
                <thead>
                <tr>
                <th>Código</th>
                <th>Nome</th>
             </tr> </thead><tbody>`;

const query = "SELECT * FROM pessoas"
connection.query(query, (error, results, fields) => {
    if (error) {
      console.error('Erro ao executar a consulta: ' + error.message);
      return;
    }
    console.log('fields: ', fields);
    console.log('result: ', results)
    results.forEach((row, index) => {
        tabela += `<tr>
                        <td>${row.codigo}</td>
                        <td>${row.nome}</td>
                    </tr>`
      });

      tabela += "</tbody></table>"

});

  connection.end();
app.get('/', (req, res) => {
    res.send("<h1>Full Cycle</h1> </ br> " + tabela)
})

app.listen(port, () => {
    console.log("Rodando na porta " + port);
})