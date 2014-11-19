//
//  PGRCustomOutletsViewController.m
//  AutoLayoutExample
//
//  Created by Evan Anger on 11/19/14.
//  Copyright (c) 2014 Evan Anger. All rights reserved.
//

#import "MSCustomOutletsViewController.h"

@interface MSCustomOutletsViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topPadding;
@property (assign, nonatomic) CGFloat startPadding;
@end

@implementation MSCustomOutletsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.startPadding = self.topPadding.constant;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)stepper:(UIStepper *)sender {
    double value = [sender value];
    self.topPadding.constant = self.startPadding + (value * 10);
}

@end
