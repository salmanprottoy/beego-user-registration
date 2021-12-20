<!DOCTYPE html>

<html>
<head>
  <title>Beego</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <style type="text/css">
  
  </style>
</head>

<body>
  <header>
    <h1></h1>
    <div >
    </div>
  </header>
  <div class="container">
    <form action="/" method="post">
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name">
      </div>
      <div class="form-group">
        <label for="lastName">First Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name">
      </div>
      <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" name="email"  placeholder="Email">
      </div>
      <div class="form-group">
        <label for="phone">Phone number</label>
        <input type="text" class="form-control" id="phone" name="phone"  placeholder="Phone number">
      </div>
      <div class="form-group">
        <label for="dob">Date of birth</label>
        <input type="date" id="dob" name="dob" class="form-control">
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
  <script src="/static/js/reload.min.js"></script>
</body>
</html>
