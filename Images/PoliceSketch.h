//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Monica Mollica on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LPSBodyPart.h"

@interface PoliceSketch : NSObject

@property (nonatomic, strong) LPSBodyPart *eyes;
@property (nonatomic, strong) LPSBodyPart *nose;
@property (nonatomic, strong) LPSBodyPart *mouth;


@end
