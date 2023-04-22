const { Pool } = require('pg');

const pool = new Pool({
  user: 'thiagopontelli',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});