//
//  ViewController.m
//  Car
//
//  Created by iOS12 on 3/19/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Tank.h"
@interface ViewController ()
{
    Car *_car;
    Tank *_tank;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   //_car =[Car new];
   _car = [[Car alloc]init:@"LB"];
    UIButton * showCar = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showCar.frame = CGRectMake(110, 80, 100,50);
    [showCar setTitle:@"showCar" forState:UIControlStateNormal];
    [showCar addTarget:self action:@selector(showCar) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showCar];
    
    UIButton * startCar = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startCar.frame = CGRectMake(110, 140, 100,50);
    [startCar setTitle:@"start" forState:UIControlStateNormal];
    [startCar addTarget:self action:@selector(startCar) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startCar];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - ShowCar
-(void) showCar{
    NSLog(@"name car is :%@",_car.nameCar);
    NSLog(@"type car is :%@",_car.typeCar);
    NSLog(@"ID car is :%@",_car.IDCar);
    NSLog(@"made car is :%@",_car.madeCar);
    }
-(void) startCar{
    [_car start];
}
@end
