const bcrypt = require('bcryptjs');
const password = 'newsecurepassword'; // <-- change this
bcrypt.hash(password, 10, function(err, hash) {
  if (err) throw err;
  console.log('Your new password hash is:\n', hash);
});

