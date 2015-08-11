<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <style>
      body { padding: 60px; 0px; }
      pre {
        overflow-x: auto;
      }
      pre code {
        overflow-wrap: normal;
        white-space: pre;
      }

      h1, h2, h3, h4, h5 {
        position: relative;
      }

      h1:hover .octicon-link:before, h2:hover .octicon-link:before, h3:hover .octicon-link:before, h4:hover .octicon-link:before, h5:hover .octicon-link:before {
        content: '\0000a7';
      }

      .anchor {
        position: absolute;
        top: 0;
        left: -18px;
        display: block;
        padding-right: 6px;
        padding-left: 30px;
        margin-left: -30px;
      }
      h1, h2, h3, h4, h5 {
        position: relative;
      }
    </style>
  <title>%title%</title>
  <meta http-equiv="Content-Type" content="text/html; charset=%encoding%">
  %pygments%
</head>
<body id="%title%">
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="index.html">Wiki</a>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h2 id="title">%title%</h2>
        %content%
      </div>
    </div>
  </div>
</body>
</html>
