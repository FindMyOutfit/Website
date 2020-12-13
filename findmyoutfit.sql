<!DOCTYPE html>
<html>

<head>
  <style>
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
    }

    .topnavigation {
      overflow: hidden;
      background-color: #333;
    }

    .topnavigation a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .topnavigation a:hover {
      background-color: #ddd;
      color: black;
    }

    .topnavigation a.active {
      background-color: #7E685A;
      color: white;
    }

    .logout_mainpage {
      text-align: right;
    }
  </style>
</head>

<body>

  <div class="topnavigation">
    <a class="active" href="#home">Create portfolio</a>
    <a href="#Update Track History">Update Track History</a>
    <a href="#Access Customer Information">Access Customer Information</a>
    <div class="logout_mainpage">
      <a href="#Logout">Logout</a>
    </div>

  </div>



  <div style="padding-left:16px">
  </div>

</body>
<style>
  body {
    background-color: #EEE2DC;
  }

  h1 {
    color: maroon;
    margin-left: px;
  }

  div.Submit_button {
    margin: auto;
    width: 50%;
    padding: 10px;
  }
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="login.css" media="screen" />
</head>

<body>
  <form>
    <div class="container">
      <center>
        <h1> Create Portfolio </h1>
      </center>
      <hr>
      <p>
        <label> Name: </label>
        <input type="text" name="Name" placeholder="Name" size="20" required />

        <p>
          <label> Age: </label>
          <input type="number" name="Age" placeholder="Age" size="3" required />
        </p>
        <p>
          <label for="email">Enter your email:</label>
          <input type="email" id="email" name="email">
        </p>
        <div>
          <label>
            <p>
              University or College :
          </label>

          <select>
            <option value="University or College">University or College</option>
            <option value="Fashion Institute of Technology">Fashion Institute of Technology</option>
            <option value="Pratt Institute">Pratt Institute</option>
            <option value="The Savannah College of Art and Design">The Savannah College of Art and Design</option>
            <option value="Academy of Art University">Academy of Art University</option>
            <option value="Kent State University">Kent State University</option>
            <option value="Drexel University">Drexel University</option>
            <option value="Massachusetts College of Art and Design">Massachusetts College of Art and Design</option>
            <option value="Otis College of Art and Design">Otis College of Art and Design</option>
            <option value="University of Cincinnati">University of Cincinnati</option>
          </select>
        </div>
      </p>
      <p>
        <label> College_ID: </label>
        <input type="number" name="College_ID" placeholder="College_ID" size="20" required />
      </p>
      <p>
        <label for="img">Select image:</label>
        <input type="file" id="img" name="img" accept="image/*">
      </p>

      <div>
        <label>
          Gender :
        </label>
        <input type="radio" value="Male" name="gender" checked> Male
        <input type="radio" value="Female" name="gender"> Female
        <input type="radio" value="Other" name="gender"> Other

      </div>
      <div>
        <label>
          Phone :
        </label>
        <input type="text" name="country code" placeholder="Country Code" value="+1" size="2" />
        <input type="text" name="phone" placeholder="phone no." size="10" / required>
        <label>
          Current Address :
        </label>
        <textarea cols="80" rows="5" placeholder="Current Address" value="address" required>
  </textarea>
      </div>
      <div class="Submit_button">
        <input type="submit" value="Submit">
      </div>
