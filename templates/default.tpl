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
    <style>
    .rejected {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAMAAAAMCGV4AAAACXBIWXMAAADFAAAAxQEdzbqoAAAAB3RJTUUH4QgEFhAtuWgv9wAAAPZQTFRFmpqam5iYnJaWnJeXnpSUn5OTopCQpoqKpouLp4iIqIiIrYCAt3V1vW1tv2xsmZmZmpeXnpKS/x4e/x8f/yAg/yIi/yQk/yUl/yYm/ygo/ykp/yws/zAw/zIy/zMz/zQ0/zU1/zY2/zw8/0BA/0ZG/0pK/1FR/1JS/1NT/1RU/1VV/1ZW/1dX/1pa/15e/19f/2Zm/2lp/21t/25u/3R0/3p6/4CA/4GB/4SE/4iI/46O/4+P/52d/6am/6ur/66u/7Oz/7S0/7e3/87O/9fX/9zc/93d/+Dg/+vr/+3t/+/v//Dw//Ly//X1//f3//n5//z8////gzaKowAAAA90Uk5T/Pz8/Pz8/Pz8/Pz8/f39ppQKWQAAAAFiS0dEEnu8bAAAAACuSURBVAhbPY9ZF4FQFEZPSKbIMmWep4gMGTKLkIv6/3/GPbfF97b3w17rA0kQOPgvAeHW6uJ6+5h7HqLdwowgOzejXRXBdx6UdSru216xuOMBHHNU0clTzeSUA6EhF8V8kqroluMiU6HKcuf4phGPr1o2q9kYZWwNq1qfRRmTaXpqsyjj17KkWCxKBUBgXWueHIyiAIg18gsse4KHkLF5IKIY10WQgv7fOy4ST34BRiopZ8WLNrgAAAAASUVORK5CYII=);
        background-repeat: no-repeat;
        background-position: 0 .2em;
        padding-left: 5.5em;
    }
    .done0 {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAA7SURBVCiR7dMxEgAgCANBI3yVRzF5KxNbW6wsuH7LQ2YKQK1mkswBVERYF5Os3UV3gwd/jF2SkXy66gAZkxS6BniubAAAAABJRU5ErkJggg==);
        background-repeat: no-repeat;
        background-position: 0 .2em;
        padding-left: 1.5em;
    }
    .done1 {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAABtSURBVCiR1ZO7DYAwDER9BDmTeZQMFXmUbGYpOjrEryA0wOvO8itOslFrJYAug5BMM4BeSkmjsrv3aVTa8p48Xw1JSkSsWVUFwD05IqS1tmYzk5zzae9jnVVVzGyXb8sALjse+euRkEzu/uirFomVIdDGOLjuAAAAAElFTkSuQmCC);
        background-repeat: no-repeat;
        background-position: 0 .15em;
        padding-left: 1.5em;
    }
    .done2 {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAB1SURBVCiRzdO5DcAgDAVQGxjAYgTvxlDIu1FTIRYAp8qlFISkSH7l5kk+ZIwxKiI2mIyqWoeILYRgZ7GINDOLjnmF3VqklKCUMgTee2DmM661Qs55iI3Zm/1u5h9sm4ig9z4ERHTFzLyd4G4+nFlVrYg8+qoF/c0kdpeMsmcAAAAASUVORK5CYII=);
        background-repeat: no-repeat;
        background-position: 0 .15em;
        padding-left: 1.5em;
    }
    .done3 {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAABoSURBVCiR7dOxDcAgDATA/0DtUdiKoZC3YhLkHjkVKF3idJHiztKfvrHZWnOSE8Fx95RJzlprimJVnXktvXeY2S0SEZRSAAAbmxnGGKH2I5T+8VfxPhIReQSuuY3XyYWa3T2p6quvOgGrvSFGlewuUAAAAABJRU5ErkJggg==);
        background-repeat: no-repeat;
        background-position: 0 .15em;
        padding-left: 1.5em;
    }
    .done4 {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAQCAYAAAAbBi9cAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAzgAAAM4BlP6ToAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAIISURBVDiNnZQ9SFtRFMd/773kpTaGJoQk1im4VDpWQcTNODhkFBcVTCNCF0NWyeDiIIiCm82QoIMIUkHUxcFBg1SEQoZszSat6cdTn1qNue92CMbEr9Sey+XC/Z/zu+f8h6ukUil3sVg0+M+4cFxk42/jH2wAqqqKSCSiPQdwcHHAnDHH9s/tN1h8V28ETdP+eU8fT9Nt62ancYdIPvJNtsu87bmjrJlrTDVM4RROJs1JrHPrD4Bar7A6cpc54iKOaTdJXCUI2UMVrQZ0Js7YPN18ECKkYNQcJe/OE/4dZsw7VqNXQMvHy3QZXQypQ6ycrtwDjf8aJ+PNEDSCzLpn7+m2pD8ZKHlKarYhy6XjEoCYGcN95qansQeA3fNdki+SaJZGTMQIOoL3W/Z89rxv+tokubNajlvk/vm+LFpF2XnUKZHI0I+QrI7Dw0OZTqdzUkpsM7mZTyfy5OPGyw1tK7AFSvmB/Ks8w8YwbUYbe6/3QEKv0vugfxWPnMLJun+d/kI/WLdizpNjMbAIKrhMF4OuwadBALqqs+RfInwUvuNi+fBd+wjogfogAFVRmffO02q01mZZ0HHdgXIzdz0QQLPezIQygX6llxNKKgOFARYCC49CqhoHIUTlss/Vx2phlYwjw8j1CAlfAiwQiJpiy7o1VHnsG5FISkoJu7Q/2YmmaV+i0ei7v38L2CBguSi5AAAAAElFTkSuQmCC);
        background-repeat: no-repeat;
        background-position: 0 .15em;
        padding-left: 1.5em;
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
