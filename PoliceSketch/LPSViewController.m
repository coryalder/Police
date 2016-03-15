//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "PoliceSketch.h"

@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyes;
@property (weak, nonatomic) IBOutlet UIImageView *nose;
@property (weak, nonatomic) IBOutlet UIImageView *mouth;

@property (nonatomic) PoliceSketch *sketch;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.sketch = [PoliceSketch new];
    
    [self updateFace];
}

- (void)displayEyes:(UIImage*)image {
    self.eyes.image = image;
}

- (void)displayNose:(UIImage*)image {
    self.nose.image = image;
}

- (void)displayMouth:(UIImage*)image {
    self.mouth.image = image;
}

- (IBAction)eyesRight:(id)sender {
    [self.sketch.eyes nextPart];
    [self updateFace];
}


-(void)updateFace {
    [self displayEyes:[self.sketch.eyes currentImage]];
    [self displayMouth:[self.sketch.mouth currentImage]];
    [self displayNose:[self.sketch.nose currentImage]];
}

- (IBAction)eyesLeft:(id)sender {
    [self.sketch.eyes previousPart];
    [self updateFace];
}

- (IBAction)noseRight:(id)sender {
    [self.sketch.nose nextPart];
    [self updateFace];
}

- (IBAction)noseLeft:(id)sender {
    [self.sketch.nose previousPart];
    [self updateFace];
}

- (IBAction)mouthRight:(id)sender {
    [self.sketch.mouth nextPart];
    [self updateFace];
}

- (IBAction)mouthLeft:(id)sender {
    [self.sketch.mouth previousPart];
    [self updateFace];
}

@end
