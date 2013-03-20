//
//  Car.h
//  Car
//
//  Created by iOS12 on 3/19/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
//{
//    NSString *_name;
//}
@property (nonatomic,strong) NSString * nameCar;
@property (nonatomic,strong) NSString * IDCar;
@property (nonatomic,strong) NSString * typeCar;
@property (nonatomic,strong) NSString * madeCar;
@property (nonatomic,strong) NSDictionary * dicidcar;
@property (nonatomic,strong) NSDictionary * dicmadecar;
@property (nonatomic,assign) NSInteger speed;
@property (nonatomic,assign) NSInteger volumes;
-(id) init : (NSString *) nameCar
  withIDcar: (NSString *) IDCar
 andmadeCar: (NSString *) madeCar
andtypeCar : (NSString *) typeCar;
-(id) init : (NSString *) name;
-(void) start;
-(void) stop;
-(void) brake;
-(void) volumeout;

@end
