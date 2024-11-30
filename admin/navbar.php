<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">Chatbot</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
				<li><a class="nav-link" >Welcome <?php echo $_SESSION["ANAME"];?><span class="sr-only">(current)</span></a></li>
				<li><a href="logout.php">Logout</a> </li>
            
			
                    
        </ul>
      
        </div>
    </div>
</nav>
