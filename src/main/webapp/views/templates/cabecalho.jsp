<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Static navbar -->
<div class="navbar navbar-inverse navbar-default navbar-static-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
      </button>
      <a class="navbar-brand" href="#">Nexter</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../navbar/">Default</a></li>
          <!-- <li class="active"><a href="./">Static top</a></li> -->
        <li><a href="../navbar-fixed-top/">Fixed top</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</div>
