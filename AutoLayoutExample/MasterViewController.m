//
//  MasterViewController.m
//  AutoLayoutExample
//
//  Created by Evan Anger on 11/19/14.
//  Copyright (c) 2014 Evan Anger. All rights reserved.
//

#import "MasterViewController.h"
#import "MSClassicCaseViewController.h"

@interface MasterViewController ()

@property NSArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.objects = @[@"WithoutConstraints", @"WithConstraints", @"ResolvingAmbiguity", @"ClassicCase", @"CustomOutlets", @"ProgrammableConstraints"];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = [self.objects objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];

    cell.textLabel.text = cellIdentifier;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    
    if([segue.identifier isEqualToString:@"ClassicCase"]) {
        MSClassicCaseViewController *controller = [segue destinationViewController];
        controller.article = @"Hey here is another article on barn cats";
        controller.content = @"Leggings sustainable Brooklyn tousled. Shabby chic sartorial High Life, street art brunch pug freegan next level cardigan fashion axe mixtape chia viral whatever cred. Semiotics lomo squid, Helvetica whatever fashion axe mlkshk Godard readymade Marfa pickled health goth Pinterest narwhal. Carles listicle bespoke, Etsy chambray sustainable pork belly street art farm-to-table leggings lumbersexual biodiesel. Wayfarers +1 crucifix, twee 8-bit Odd Future Pitchfork Tumblr sartorial slow-carb whatever. Letterpress freegan cornhole, Vice meggings viral fap pug master cleanse Carles iPhone. Authentic Truffaut try-hard Neutra bespoke fashion axe.";
        controller.authorName = @"Evan Anger";
        controller.published = @"Published 11/04/2014 Painesville, OH";
    }
}



@end
