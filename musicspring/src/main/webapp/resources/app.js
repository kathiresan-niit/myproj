angular.module('sortApp',[])
.controller('mainController',function($scope)
{
	$scope.sortType='name';
$scope.all=[
                 {pid:'1',pname:'wire',cost:1000,available:"good to use"},
                 {pid:'2',pname:'wood',cost:2000,available:"good to handle"},
                 {pid:'3',pname:'air',cost:3000,available:"good to listen"},
                 {pid:'1',pname:'tabla',cost:1000,available:"good to use"},
                 {pid:'2',pname:'violin',cost:2000,available:"good to handle"},
                 {pid:'3',pname:'veena',cost:3000,available:"good to listen"},
                 {pid:'1',pname:'tabla',cost:1000,available:"good to use"},
                 {pid:'2',pname:'violin',cost:2000,available:"good to handle"},
                 {pid:'3',pname:'veena',cost:3000,available:"good to listen"},
                 {pid:'1',pname:'yamaha',cost:1000,available:"good to use"},
                 {pid:'2',pname:'sony',cost:2000,available:"good to handle"},
                 {pid:'3',pname:'htc',cost:3000,available:"good to listen"},
                 {pid:'1',pname:'keyboard',cost:1000,available:"good to use"},
                 {pid:'2',pname:'drum',cost:2000,available:"good to handle"},
                 {pid:'3',pname:'orchestral',cost:3000,available:"good to listen"}
               
                 
                 
                ];

$scope.motorolo=[
                 {pid:'1',pname:'moto x play',cost:1000,available:4},
                 {pid:'2',pname:'moto g2',cost:2000,available:5},
                 {pid:'3',pname:'moto g3',cost:3000,available:3}
                 
                 
                ];

$scope.mx=[
                 {pid:'1',pname:'canvas A1',cost:1000,available:4},
                 {pid:'2',pname:'canvas juice',cost:2000,available:3},
                 {pid:'3',pname:'cancas 6 pro',cost:3000,available:2}
                 
                 
                ];
$scope.sony=[
                 {pid:'1',pname:'xperia L',cost:1000,available:5},
                 {pid:'2',pname:'xperia z1',cost:2000,available:3},
                 {pid:'3',pname:'xperia e',cost:3000,available:6}
                 
                 
                ];
}		


);
