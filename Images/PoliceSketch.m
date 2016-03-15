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
        _eyesArray = @[
                       [UIImage imageNamed:@"eyes_1.jpg"],
                       [UIImage imageNamed:@"eyes_2.jpg"],
                       [UIImage imageNamed:@"eyes_3.jpg"],
                       [UIImage imageNamed:@"eyes_4.jpg"],
                       [UIImage imageNamed:@"eyes_5.jpg"]
                       ];
        _noseArray = @[
                       [UIImage imageNamed:@"nose_1.jpg"],
                       [UIImage imageNamed:@"nose_2.jpg"],
                       [UIImage imageNamed:@"nose_3.jpg"],
                       [UIImage imageNamed:@"nose_4.jpg"],
                       [UIImage imageNamed:@"nose_5.jpg"]
                       ];
        _mouthArray = @[
                        [UIImage imageNamed:@"mouth_1.jpg"],
                        [UIImage imageNamed:@"mouth_2.jpg"],
                        [UIImage imageNamed:@"mouth_3.jpg"],
                        [UIImage imageNamed:@"mouth_4.jpg"],
                        [UIImage imageNamed:@"mouth_5.jpg"]
                        ];
    }
    return self;
}

-(UIImage*)moveEyesRight:(UIImage*)currentEyes {
    int current = [self.eyesArray indexOfObject:currentEyes];
    int next = current+1;
    if(current == [self.eyesArray count] - 1) {
        next = 0;
    }
    return self.eyesArray[next];
}

-(UIImage*)moveEyesLeft:(UIImage*)currentEyes {
    int current = [self.eyesArray indexOfObject:currentEyes];
    int next = current-1;
    if(current == 0) {
        next = [self.eyesArray count] - 1;
    }
    return self.eyesArray[next];
}

-(UIImage*)moveNoseRight:(UIImage*)currentNose {
    int current = [self.noseArray indexOfObject:currentNose];
    int next = current+1;
    if(current == [self.noseArray count] - 1) {
        next = 0;
    }
    return self.noseArray[next];
}

-(UIImage*)moveNoseLeft:(UIImage*)currentNose {
    int current = [self.noseArray indexOfObject:currentNose];
    int next = current-1;
    if(current == 0) {
        next = [self.noseArray count] - 1;
    }
    return self.noseArray[next];
}

-(UIImage*)moveMouthRight:(UIImage*)currentMouth {
    int current = [self.mouthArray indexOfObject:currentMouth];
    int next = current+1;
    if(current == [self.mouthArray count] - 1) {
        next = 0;
    }
    return self.mouthArray[next];
}

-(UIImage*)moveMouthLeft:(UIImage*)currentMouth {
    int current = [self.mouthArray indexOfObject:currentMouth];
    int next = current-1;
    if(current == 0) {
        next = [self.mouthArray count] - 1;
    }
    return self.mouthArray[next];
}

@end
