<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!-- Latest compiled and minified CSS -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
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

      p {
        width: 40em;
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
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-42797790-2', 'auto');
		ga('send', 'pageview');

	</script>
  <p><small>Page created on %date%</small></p>
</body>
</html>
