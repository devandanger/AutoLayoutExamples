//
//  MSClassicCaseViewController.m
//  AutoLayoutExample
//
//  Created by Evan Anger on 11/19/14.
//  Copyright (c) 2014 Evan Anger. All rights reserved.
//

#import "MSClassicCaseViewController.h"

@interface MSClassicCaseViewController ()
@property (weak, nonatomic) IBOutlet UILabel *newsArticle;
@property (weak, nonatomic) IBOutlet UILabel *author;
@property (weak, nonatomic) IBOutlet UILabel *datePublished;
@property (weak, nonatomic) IBOutlet UILabel *newsContent;
@end

@implementation MSClassicCaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.newsArticle.text = self.article;
    self.author.text = [NSString stringWithFormat:@"Reported by %@", self.authorName];
    self.datePublished.text = self.published;
    self.newsContent.text = self.content;
}


@end
