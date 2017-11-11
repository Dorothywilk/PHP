angular.module('weather')

.controller('WeatherCtrl', function($scope, $http, OpenWeatherConfig, $cordovaGeolocation) {
  $scope.search = '';
  $scope.state = false;

  $scope.weatherData = {
    icon: '',
    main: '',
    city: '',
    description: '',
    temp: '',
    position: {
      lat: '',
      lng: ''
    }
  };

  $scope.loadWeather = function() {
    var posOptions = {timeout: 10000, enableHighAccuracy: false};
    $cordovaGeolocation
      .getCurrentPosition(posOptions)
      .then(function (position) {
        var lat  = position.coords.latitude;
        var lng = position.coords.longitude;

        var url = OpenWeatherConfig.apiUrl + 'lat=' + lat + '&lon=' + lng + OpenWeatherConfig.appid;
        $http.get(url).success(function(data) {
          $scope.weatherData.icon = OpenWeatherConfig.imgUrl + data.weather[0].icon + '.png';
          $scope.weatherData.main = data.weather[0].main;
          $scope.weatherData.city = data.name;
          $scope.weatherData.description = data.weather[0].description;
          $scope.weatherData.temp = data.main.temp;
          $scope.weatherData.position = {
            lat: data.coord.lat,
            lng: data.coord.lon
          };
          $scope.state = true;
        });
      }, function(err) {
        // error
      });
  };
});
