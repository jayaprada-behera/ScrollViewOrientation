//
//  WAViewController.m
//  ScrollViewOrientation
//
//  Created by Jayaprada Behera on 25/02/14.
//  Copyright (c) 2014 Webileapps. All rights reserved.
//

#import "WAViewController.h"

@interface WAViewController ()

@end

@implementation WAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //set uiscrollview.auresizeSubview = NO; in xib
    UIImage *img = [UIImage imageNamed:@"board.png"];
    NSLog(@"%s: (%f x %f)", __PRETTY_FUNCTION__, img.size.width, img.size.height);
    imageView_.image = img;
    
    imageView_.frame = CGRectMake(imageScrollView.frame.origin.x, imageScrollView.frame.origin.y, img.size.width, img.size.height);
    imageScrollView.contentSize = imageView_.bounds.size;
    NSLog(@"content width %f",imageScrollView.contentSize.width);

}
//- (void)viewDidLayoutSubviews
//{
//    [super viewDidLayoutSubviews];
//    imageScrollView.contentSize = imageView_.bounds.size;
//    NSLog(@"content width %f",imageScrollView.contentSize.width);
//}

//- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
//{
//    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
//    
//    // fruitless attempt to solve the rotation problem
//    
//    imageScrollView.contentSize = imageView_.bounds.size;
//    NSLog(@"content width %f",imageScrollView.contentSize.width);
//
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
