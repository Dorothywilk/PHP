angular.module('weather')

.constant('OpenWeatherConfig', {
   searchUrl: 'http://api.openweathermap.org/data/2.5/weather?q=',
   apiUrl: 'http://api.openweathermap.org/data/2.5/weather?',
   units: '&units=metric',
   appid: '&appid=7dde7bb476d674e5ea93cd95e0e7e0a8',
   imgUrl: 'http://openweathermap.org/img/w/'
})
