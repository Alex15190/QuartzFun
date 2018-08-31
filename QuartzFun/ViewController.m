//
//  ViewController.m
//  QuartzFun
//
//  Created by Alex Chekodanov on 31.08.2018.
//  Copyright © 2018 MERA. All rights reserved.
//

#import "ViewController.h"
#import "BIDConstants.h"
#import "BIDQuartzFunView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorControl;

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
- (IBAction)changeShape:(id)sender
{
    UISegmentedControl *control = sender;
    [(BIDQuartzFunView *)self.view setShapeType:[control selectedSegmentIndex]];
    
    if([control selectedSegmentIndex] == kImageShape)
        self.colorControl.enabled = NO;
    else
        self.colorControl.enabled = YES;
}


- (IBAction)changeColor:(UISegmentedControl *)sender
{
    UISegmentedControl *control = sender;
    ColorTabIndex index = [control selectedSegmentIndex];
    BIDQuartzFunView *funView = (BIDQuartzFunView *)self.view;
    
    switch (index)
    {
        case kRedColorTab:
            funView.currentColor = [UIColor redColor];
            funView.useRandomColor = NO;
            break;
        case kBlueColorTab:
            funView.currentColor = [UIColor blueColor];
            funView.useRandomColor = NO;
            break;
        case kYellowColorTab:
            funView.currentColor = [UIColor yellowColor];
            funView.useRandomColor = NO;
            break;
        case kGreenColorTab:
            funView.currentColor = [UIColor greenColor];
            funView.useRandomColor = NO;
            break;
        case kRandomColorTab:
            funView.useRandomColor = YES;
            break;
        default:
            break;
    }
}
@end
