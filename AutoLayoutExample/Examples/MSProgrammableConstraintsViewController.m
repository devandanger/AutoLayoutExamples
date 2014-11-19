//
//  MSProgrammableConstraintsViewController.m
//  AutoLayoutExample
//
//  Created by Evan Anger on 11/19/14.
//  Copyright (c) 2014 Evan Anger. All rights reserved.
//

#import "MSProgrammableConstraintsViewController.h"
#import "Masonry.h"

@interface MSProgrammableConstraintsViewController ()
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation MSProgrammableConstraintsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clicked:(UIButton *)sender {
    if(self.imageView == nil) {
        [self addimageViewUsingMasonryLibrary];
    }
}
- (IBAction)remove:(id)sender {
    [self.imageView removeFromSuperview];
    self.imageView = nil;
}

- (void)addImageView {
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DogMeme"]];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.imageView];
    [self.view addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:self.imageView
                                                             attribute:NSLayoutAttributeHeight
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:200],
                                [NSLayoutConstraint constraintWithItem:self.imageView
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1 
                                                              constant:200],
                                [NSLayoutConstraint constraintWithItem:self.imageView
                                                             attribute:NSLayoutAttributeCenterX
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterX
                                                            multiplier:1.0
                                                              constant:0],
                                [NSLayoutConstraint constraintWithItem:self.imageView
                                                             attribute:NSLayoutAttributeCenterY
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterY
                                                            multiplier:1.0
                                                              constant:0]
                                ]];
}

- (void)addImageViewUsingVisualFormat {
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DogMeme"]];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.imageView];
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-150-[image]-150-|"

                               options:NSLayoutFormatAlignAllCenterX |NSLayoutFormatAlignAllCenterY
                               metrics:nil
                               views:@{ @"image": self.imageView }]];
    [self.view addConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:|-50-[image]-50-|"
                              
                              options:NSLayoutFormatAlignAllCenterX |NSLayoutFormatAlignAllCenterY
                              metrics:nil
                               views:@{ @"image": self.imageView }]];
}

- (void)addimageViewUsingMasonryLibrary {
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"DogMeme"]];
    [self.view addSubview:self.imageView];
    [self.imageView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@200);
        make.height.equalTo(@200);
    }];
}





@end
