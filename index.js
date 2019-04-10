let mysql = require('mysql');
let config = require('./config.js');

let connection = mysql.createConnection(config);
// 5. List all the continents with the number of languages spoken in each continent
let sql = `call new_world.number_of_languages_per_continent();`;

connection.query(sql, true, (error, results, fields) => {
  if (error) {
    return console.error(error.message);
  }
  console.log(results[0]);
});
connection.end();
