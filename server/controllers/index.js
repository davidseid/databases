var models = require('../models');
var Promise = require('bluebird');

module.exports = {
  messages: {
    get: function (req, res) {
      // a function which handles a get request for all messages
      models.messages.get()
        .then( (data) => {
          /* write to response*/
          console.log(data);
           
        }).catch((err) => {
          // TODO: send proper err status code
          res.end('NO');
        });
        
      
      // make a promise of models.messages.get
      // invoke it? 
      // when promisified models.messages.get resolves,
      // use the response database information to write to the http response
      // end the response
      
      if (res) {
        
      }
      
    }, 
    post: function (req, res) {
      // a function which handles posting a message to the database
    } 
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      
    },
    post: function (req, res) {
      
    }
  }
};

