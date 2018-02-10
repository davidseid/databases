var db = require('../db/index.js');

module.exports = {
  messages: {
    get: function () {
      // a function which produces all the messages
      return new Promise((resolve, reject) => {
        db.query('SELECT * FROM messages', (err, rows, fields) => {
          if (err) {
            reject(err);
          }
          
          // console.log('ROWS: ', rows);
          // console.log(typeof rows[0].message_text);
          resolve(rows);
        });
      });
    }, 
    post: function () {
      // a function which can be used to insert a message into the database
      
    } 
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

module.exports.messages.get();