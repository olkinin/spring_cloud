angular.module('app', []).controller('indexController', function ($scope, $http) {


    $scope.loadProducts = function () {
        $http({
           url: 'http://localhost:3000/app/products',
            method: 'GET'
        }).then(function (response) {
            $scope.products = response.data;
        });
    }

    $scope.loadProducts();
});