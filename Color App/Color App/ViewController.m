//
//  ViewController.m
//  Color App
//
//  Created by Thomas Denney on 12/08/2014.
//  Copyright (c) 2014 Programming Thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet COBColorControl *colorControl;
@property (weak, nonatomic) IBOutlet UILabel *currentColor;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorChanged:(id)sender {
    self.currentColor.textColor = self.colorControl.color;
    CGFloat r, g, b;
    [self.colorControl.color getRed:&r green:&g blue:&b alpha:NULL];
    self.currentColor.text = [NSString stringWithFormat:@"#%02X%02X%02X", (int)(r * 255.0), (int)(g * 255.0), (int)(b * 255.0)];
}

@end
