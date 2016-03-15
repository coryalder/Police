//
//  LPSBodyPart.m
//  PoliceSketch
//
//  Created by Cory Alder on 2016-03-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSBodyPart.h"

@implementation LPSBodyPart

-(instancetype)initWithImages:(NSArray *)images {
    if ((self = [super init])) {
    
        _images = images;
        self.currentIndex = 3;
        
    }
    return self;
}



-(UIImage *)currentImage {
    return self.images[self.currentIndex];
}

-(void)nextPart {
    self.currentIndex++;
    if (self.currentIndex >= [self.images count]) {
        self.currentIndex = 0;
    }
}

-(void)previousPart {
    self.currentIndex--;
    if (self.currentIndex < 0) {
        self.currentIndex = (int)[self.images count]-1;
    }
}

@end








