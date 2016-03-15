//
//  LPSBodyPart.h
//  PoliceSketch
//
//  Created by Cory Alder on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPSBodyPart : NSObject

@property (nonatomic, strong) NSArray *images;
@property (nonatomic, assign) int currentIndex;

-(instancetype)initWithImages:(NSArray *)images;

-(UIImage *)currentImage;

-(void)nextPart;
-(void)previousPart;

@end
