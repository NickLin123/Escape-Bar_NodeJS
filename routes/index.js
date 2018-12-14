// var express = require('express');
// var router = express.Router();

// /* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });

// module.exports = router;

///////////////////sendgrid///////////////////
var express = require('express');
var router = express.Router();
const sgMail = require('@sendgrid/mail'); //sendgrid library to send emails 

//sendgrid api key
sgMail.setApiKey('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'); // *** Can't Push on Github ***

// Welcome page of the express server: 
router.get('/', (req, res) => {
  res.send("Welcome to the Sendgrid Emailing Server"); 
});

router.get('/send-email', (req,res) => {
    
  //Get Variables from query string in the search bar
  const { recipient, sender, topic, text } = req.query; 

  //Sendgrid Data Requirements
  const msg = {
      to: recipient, 
      from: sender,
      subject: topic,
      text: text,
  }

  //Send Email
  sgMail.send(msg)
  .then((msg) => console.log(text));
});


// /* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });

module.exports = router;
///////////////////sendgrid///////////////////
