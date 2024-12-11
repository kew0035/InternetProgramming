<!DOCTYPE html>
<html lang="en">
<head>
  <title>Test</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
  rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">

<style>
p{
  margin-top: 0;
  margin-bottom: 0;
}

body{
  margin: 0;
  padding-top: 80px;
  padding-left: 256px;
  padding-right: 24px;
  background-color: #121212;
  font-family: Arial, sans-serif;
  color: white;
}



.header{
  height: 55px;

  display: flex;
  flex-direction: row;
  justify-content: space-between;
  color: white;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 100;  
  background-color: #121212;
}


.left-section{
  display: flex;
  align-items: center;
  background-color:  #1e1e1e;
  width: 200px;
}
.logo {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 20px;
    color: #d4af37;
    text-align: left;
    margin-left: 10px;
    margin-top: 15px;
}



.middle-section{
  flex: 1;
  margin-left: -580px;
  margin-right: 35px;
  max-width: 300px;
  display: flex;
  align-items: center;
}
.search-bar{
  flex: 1;
  height: 36px;
  padding-left: 10px;
  font-size: 16px;
  border: none;
  border-radius: 5px;
  width: 0;
}
.search-bar::placeholder{
  font-family: Mooli, Arial;
  font-size: 16px;
}



.right-section{
  margin-right: 20px;
  width: 280px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-shrink: 0;
}
.current-user-picture{
  height: 32px;
  border-radius: 16px;
}


.sidebar{
  position: fixed;
  left: 0;
  bottom: 0;
  top: 55px;
  background-color:  #1e1e1e;
  width: 200px;
  z-index: 200;
  padding-top: 5px;
  
}
.sidebar nav ul {
    list-style: none;
}
.sidebar nav ul li {
    margin-left: 0;
    margin-top: 30px;
    width: 100%;
}
.sidebar nav ul li a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    transition: color 0.3s;
    display: flex;
    align-items: center;
}
.sidebar nav ul li a i {
    margin-right: 20px; 
    font-size: 18px;
}
.sidebar nav ul li a:hover {
    color: #d4af37;
}
.logout-btn {
    background-color: #d32f2f;
    border: none;
    color: #fff;
    padding: 10px;
    cursor: pointer;
    font-size: 16px;
    display: flex;
    align-items: center;
    justify-content: center; 
    margin-left: 40px;
    margin-top: 350px;
    cursor: pointer;
}
.logout-btn i {
    margin-right: 5px;
}



section {
  display: flex;
  flex-wrap: wrap;
}

.yt-video {
  margin: 10px;
  text-align: center;
}

.yt-video iframe {
  width: 560px; 
  height: 315px; 
  border: none; 
}

.yt-video h3 {
  font-size: 16px; 
  margin-top: 10px;
}


  </style>
</head>

<body>
    <h1>Your School</h1>
    <h2>Sekolah Kebangsaan (FELDA) Bukit Waha</h2>

    <div class="header">
      <div class="left-section">
        <div class="logo">TOPSS CENTRAL</div>        
      </div>


      <div class="middle-section">
        <input class="search-bar" type="text" placeholder="Search">        
        </button> 
      </div>


      <div class="right-section">
        <span>Adam Selamat</span>
        <span>Skudai, Malaysia</span>    
        <img class="current-user-picture" src="icons/JC.jpg" alt="">
      </div>    
    </div>



    <div class="sidebar">
      <nav>
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#"><i class="fas fa-envelope"></i> Messages</a></li>
          <li><a href="#"><i class="fas fa-users"></i> Members</a></li>
          <li><a href="#"><i class="fas fa-cog"></i> Settings</a></li>
          <li><a href="#"><i class="fas fa-chart-line"></i> Activity</a></li>
        </ul>
      </nav>
      <button class="logout-btn"><i class="fas fa-sign-out-alt"></i> Log out
      </button>
    </div>

  <section></section>
  <script>
    const videoSection = document.querySelector("section");

    fetch('https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=UUMewsBNOIn0_D2KrrR7sWig&key=AIzaSyCqUHZEU-LoOYB5YcX6R1eoxrMgM6ModxI')
    .then(res => res.json())
    .then(data => {
        data.items.forEach(curr => {
            videoSection.innerHTML +=`
            <div class="yt-video">
                <iframe src="https://www.youtube.com/embed/${curr.snippet.resourceId.videoId}" allowfullscreen> </iframe>
                <h3>${curr.snippet.title}</h3>
            </div>`;
        });
    })
    .catch(error => {
        console.error('Error fetching data:', error);
    });
</script>
  
</body>
</html>
