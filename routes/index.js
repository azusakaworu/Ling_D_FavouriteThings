var express = require('express');
var router = express.Router();


// add this line 0-0!
var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
  //do a database query
  connect.query(`SELECT name, avatar FROM hero`,(err, result)=>{
    if(err){
      throw err;
      console.log(err);
    }else{console.log(result);
      //res.render('index', { avatars: result });
    }
  });
  
});

module.exports = router;
