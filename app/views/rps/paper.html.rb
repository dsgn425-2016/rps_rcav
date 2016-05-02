<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
</head>
<body>

<div class="container">
  <hr>

  <div class="row">
    <div class="col-md-8 col-md-offset-2 col-xs-12">
      <div class="btn-group btn-group-justified">
        <a href="/rock" class="btn btn-block btn-primary">
          Play Rock
        </a>

        <a href="/paper" class="btn btn-block btn-info">
          Play Paper
        </a>

        <a href="/scissors" class="btn btn-block btn-primary">
          Play Scissors
        </a>
      </div>
    </div>
  </div>

  <hr>

  <div class="row">
  <div class="col-md-4 col-md-offset-2 col-xs-6">
    <div class="panel panel-success">
      <div class="panel-heading">
        <h2 class="panel-title text-center">
          Rock
        </h2>
      </div>
      <div class="panel-body">
        <img class="img-responsive" src="<%= @user_image %>">
      </div>
    </div>
  </div>

  <div class="col-md-4 col-xs-6">
    <div class="panel panel-danger">
      <div class="panel-heading">
        <h2 class="panel-title text-center">
          Paper
        </h2>
      </div>
      <div class="panel-body">
        <img class="img-responsive" src="<%= @computer_image %>">
      </div>
    </div>
    </div>
</div>

<div class="row">
  <div class="col-md-12">
    <div class="well text-center">
      <h1>

        <span class="label <%= @label %>">
          You <%= @result %>
        </span>
      </h1>
    </div>
  </div>
</div>

</div>

</body>
</html>
