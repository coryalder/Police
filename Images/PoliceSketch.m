//
//  PoliceSketch.m
//  PoliceSketch
//
//  Created by Monica Mollica on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "PoliceSketch.h"

@implementation PoliceSketch

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _eyes = [[LPSBodyPart alloc] initWithImages:@[
                                                      [UIImage imageNamed:@"eyes_1.jpg"],
                                                      [UIImage imageNamed:@"eyes_2.jpg"],
                                                      [UIImage imageNamed:@"eyes_3.jpg"],
                                                      [UIImage imageNamed:@"eyes_4.jpg"],
                                                      [UIImage imageNamed:@"eyes_5.jpg"]
                                                      ]];
        
        _nose = [[LPSBodyPart alloc] initWithImages:@[
                                                      [UIImage imageNamed:@"nose_1.jpg"],
                                                      [UIImage imageNamed:@"nose_2.jpg"],
                                                      [UIImage imageNamed:@"nose_3.jpg"],
                                                      [UIImage imageNamed:@"nose_4.jpg"],
                                                      [UIImage imageNamed:@"nose_5.jpg"]
                                                      ]];
        
        _mouth = [[LPSBodyPart alloc] initWithImages:@[
                                                       [UIImage imageNamed:@"mouth_1.jpg"],
                                                       [UIImage imageNamed:@"mouth_2.jpg"],
                                                       [UIImage imageNamed:@"mouth_3.jpg"],
                                                       [UIImage imageNamed:@"mouth_4.jpg"],
                                                       [UIImage imageNamed:@"mouth_5.jpg"]
                                                       ]];
        
    }
    return self;
}

@end
