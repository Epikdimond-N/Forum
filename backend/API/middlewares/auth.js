require("dotenv").config();
const jwt = require("jsonwebtoken");
const jwt_key = process.env.JWT_KEY;

function validateToken(req, res, next) {
  const token = req.headers.authorization;
  if (!token) return res.status(401).send("Unauthorized");
  jwt.verify(token, jwt_key, (err, user) => {
    if (err) {
      return res.status(403).send("Forbidden");
    }
    req.user = user;
    next();
  });
}

module.exports = validateToken;
