var express = require('express');
var router = express.Router();


// add this line 0-0!
var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
  //do a database query  name avatar 
  connect.query(`SELECT fave_title, fave_img FROM tbl_fave`,(err, result)=>{
    if(err){
      throw err;
      console.log(err);
    }else{console.log(result);
      res.render('index', { faves: result });
    }
  });
  
});

//get indiividual data /bio info :hero -->placeholder
router.get('/:anime', function(req, res, next) {
  
  connect.query(`SELECT * FROM tbl_fave WHERE fave_title="${req.params.anime}"`,(err, result)=>{
    if(err){
      throw err;
      console.log(err);
    }else{console.log(result);
      res.render('detail', { detailData: result[0]});
    }
  });
  
});

module.exports = router;
