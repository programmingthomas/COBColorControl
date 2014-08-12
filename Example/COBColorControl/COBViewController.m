//
//  COBViewController.m
//  COBColorControl
//
//  Created by Programming Thomas on 08/12/2014.
//  Copyright (c) 2014 Programming Thomas. All rights reserved.
//

#import "COBViewController.h"

@interface COBViewController ()
@property (weak, nonatomic) IBOutlet COBColorControl *colorControl;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation COBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self colorUpdated:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorUpdated:(id)sender {
    self.colorLabel.textColor = self.colorControl.color;
    CGFloat r, g, b;
    [self.colorControl.color getRed:&r green:&g blue:&b alpha:NULL];
    self.colorLabel.text = [NSString stringWithFormat:@"#%02X%02X%02X", (int)(r * 255.0), (int)(g * 255.0), (int)(b * 255.0)];
}

@end
