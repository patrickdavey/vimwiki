###Codeschool course

attach via directives in html e.g.
```html
<body class="container" ng-controller="StoreController as store">
```

* ng-controller
* ng-hide
* ng-show
* ng-repeat (ng-repeat="thing in scope.things")



### $scope

```javascript
//example creating a controller and passing in scope
angular.module('Blah')
.controller('BlahIndexController', ['$http', '$scope', function($http, $scope) {

  $http({method: 'GET', url: '/blahs'}).success(function(data) {
    $scope.blahs = data;
  });
}]);

```

By default directives use their parents scope.  Seems like you'd often
want to isolate your scope per directive - here's how that looks:

```javascript
angular.module('Blah')
.directive('something', function() {
  return {
    restrict: 'E',
    templateUrl: 'templates/directives/something.html',
    scope: {
      header: '=',
      description: '=',
      flagged: '='
    },
     link: function(scope, element, attrs){
      // link is called after the element has been
      // added to the screen.  Useful for handlers etc.
      if (scope.flagged){
        element.addClass("flagged");
      }
    }
  };
});

```

```html
<!-- something.html -->
<div class="card" title="{{header}}">
  <h2 class="h3">{{header}}</h2>
  <p>{{description}}</p>
</div>


<!-- calling out to the <something> directive -->
<div class="users-wrapper">
  <h1>Users</h1>

  <div class="users-wrapper">
    <a class="card-users" ng-repeat="user in users">
      <something header="user.name" description="user.bio"></something>
    </a>
  </div>
</div>
```

If you need to insert html, you may need to use *ng-bind-html* and *$sce* ?service?

