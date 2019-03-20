var express = require('express');
var router = express.Router();


// add this line 0-0!
var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
  //do a database query  name avatar 
  connect.query(`SELECT name, avatar FROM hero`,(err, result)=>{
    if(err){
      throw err;
      console.log(err);
    }else{console.log(result);
      res.render('index', { avatars: result });
    }
  });
  
});

//get indiividual data /bio info :hero -->placeholder
router.get('/:hero', function(req, res, next) {
  
  connect.query(`SELECT * FROM hero WHERE name="${req.params.hero}"`,(err, result)=>{
    if(err){
      throw err;
      console.log(err);
    }else{console.log(result);
      res.render('bio', { bioData: result[0]});
    }
  });
  
});

module.exports = router;
