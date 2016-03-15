//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Monica Mollica on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PoliceSketch : NSObject

@property (nonatomic) NSArray *eyesArray;
@property (nonatomic) NSArray *noseArray;
@property (nonatomic) NSArray *mouthArray;

-(instancetype)init;

-(UIImage*)moveEyesRight:(UIImage*)currentEyes;

-(UIImage*)moveEyesLeft:(UIImage*)currentEyes;

-(UIImage*)moveNoseRight:(UIImage*)currentNose;

-(UIImage*)moveNoseLeft:(UIImage*)currentNose;

-(UIImage*)moveMouthRight:(UIImage*)currentMouth;

-(UIImage*)moveMouthLeft:(UIImage*)currentMouth;

@end
