//
//  Car.m
//  Car
//
//  Created by iOS12 on 3/19/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Car.h"
#import "Tank.h"
@interface Car(){
    NSTimer *_timer;
    NSInteger velocityIncrement;
    NSInteger distance;
    NSInteger time;
    NSInteger acceleration;
    NSInteger volume;
}
@property (nonatomic,assign) NSInteger maxSpeed;
@end
@implementation Car
@synthesize madeCar = _madeCar;
@synthesize IDCar = _IDCar;
@synthesize typeCar =_typeCar;
@synthesize speed = _speed;
-(NSString *) typeCar{
NSDictionary * typeCar =@{@"LB":@"Lamborghini",@"AD":@"AuDi",@"YR":@"Yaris"
                             };
   return[typeCar valueForKey:_typeCar];
}
-(void) setTypeCar:(NSString *)typeCar{
_typeCar =  [typeCar uppercaseString];
}
-(id) init : (NSString *) name{
    if (self = [super init]) {
        self.nameCar = name;
        self.dicidcar = @{@"Lamborghini":@"LB1205",@"AuDi":@"AD1206",@"Yaris":@"YR1207"};
        self.dicmadecar = @{@"LB1205":@"Italy",@"AD1206":@"United states",@"YR1207" :@"Japanese"
                       };
        self.typeCar = name;
        self.IDCar=[self.dicidcar objectForKey:
                    self.typeCar];
        self.madeCar =[self.dicmadecar objectForKey:self.IDCar];

}
    return self;
}
-(id) init : (NSString *) nameCar
  withIDcar: (NSString *) IDCar
 andmadeCar: (NSString *) madeCar
 andtypeCar: (NSString *) typeCar
    {
        if (self=[super init])
        {
            _nameCar = nameCar;
            _IDCar = IDCar;
            _madeCar = madeCar;
            _typeCar = typeCar;
        }
return self;
}
-(void) start{
    NSLog(@"%@ start in 0 km",self.typeCar);
    NSLog(@"%@ start with 0 l:",self.typeCar);
    NSLog(@"%@ start with volumes %d",self.typeCar,self.volumes);
    velocityIncrement =10;
    time = 3;
    acceleration = 2;
    self.volumes = 105;
    [self run];
    [self volumeout];
    
}
-(void) volumeout{
    if (self.volumes <=5){
        NSLog(@"volumes of %@ engine is:%d l",self.typeCar,self.volumes);
        [self stop];
    }else {
        NSLog(@"%@:number of volumes is : %d l",self.typeCar,self.volumes);
        self.volumes-=5;
        [NSTimer scheduledTimerWithTimeInterval:1
                                         target:self
                                       selector:@selector(volumeout)
                                       userInfo:nil
                                        repeats:NO];

    }
    if (distance==1980) {
        NSLog(@"%@ need stop, volumes in Tank have :%d l",self.typeCar,self.volumes);
    
}
}
-(void) run{
      NSLog(@"%@ run with speed : %d km/h",self.typeCar,self.speed);
    distance += (self.speed*time + 1/2 *(acceleration * time * time));
    self.speed+= velocityIncrement;
      if (self.speed >=100){
       velocityIncrement = -10;
    }
    
    if (self.speed <= 0) {
    
        NSLog(@"%@ break",self.typeCar);
        NSLog(@"%@ stop",self.typeCar);
        NSLog(@"%@ run distance is :%d km",self.typeCar,distance);
    }
    else
    {
        [NSTimer scheduledTimerWithTimeInterval:1
                                         target:self
                                       selector:@selector(run)
                                       userInfo:nil
                                        repeats:NO];
    }
}

-(void) stop{

    NSLog(@"too black for the red team");
    NSLog(@"goodbye and goodluck");

}
@end
