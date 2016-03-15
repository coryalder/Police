//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

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
    [self displayEyes:[UIImage imageNamed:@"eyes_1.jpg"]];
    [self displayNose:[UIImage imageNamed:@"nose_1.jpg"]];
    [self displayMouth:[UIImage imageNamed:@"mouth_1.jpg"]];
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
    [self displayEyes:[self.sketch moveEyesRight:self.eyes.image]];
}

- (IBAction)eyesLeft:(id)sender {
    [self displayEyes:[self.sketch moveEyesLeft:self.eyes.image]];
}

- (IBAction)noseRight:(id)sender {
    [self displayNose:[self.sketch moveNoseRight:self.nose.image]];
}

- (IBAction)noseLeft:(id)sender {
    [self displayNose:[self.sketch moveNoseLeft:self.nose.image]];
}

- (IBAction)mouthRight:(id)sender {
    [self displayMouth:[self.sketch moveMouthRight:self.mouth.image]];
}

- (IBAction)mouthLeft:(id)sender {
    [self displayMouth:[self.sketch moveMouthLeft:self.mouth.image]];
}

@end
