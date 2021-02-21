SitRite - Roadmap
GET /Signup
  sign up form

POST /users
  create user in the DB

GET /login
  login form for users
POST /login
  create user session and redirect

GET /sitters/new
  new sitter form
    name, age, zip, email, reviews, phone
POST /sitter
  create sitter in the DB

GET /guardians/new
  new guardian form
  name, email, num_kids, st_addr_1, st_addr_2, city, state, zip, ph_num, reviews
POST /guardian
  create guardian in the DB

GET /jobs/new
  new job form
  date, duration, sitter, guardian_name, address, num of kids,
POST /job
  create job in the DB
GET /jobs
GET /jobs/:id
GET
