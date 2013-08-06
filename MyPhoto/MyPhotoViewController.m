//
//  MyPhotoViewController.m
//  MyPhoto
//
//  Created by changhu on 13-8-6.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "MyPhotoViewController.h"

@interface MyPhotoViewController ()

@end

@implementation MyPhotoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    images = [[NSArray alloc]initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", @"6.jpg", nil];
    
    current = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)previous:(id)sender {
        
    if( current <= 0){
        current = [images count] - 1;
    }else {
        current -= 1;
    }

    NSLog(@"count  %i", [images count]);
    NSLog(@"curren %i", current);
    
    UIImage *image = [UIImage imageNamed:[images objectAtIndex:current]];

    imageView.image = image;

    [image release];
}

- (IBAction)next:(id)sender {
            
    if(current >= [images count] - 1){
        current = 0;
    }else {
        current += 1;
    }
    
    NSLog(@"count  %i", [images count]);
    NSLog(@"curren %i", current);

    UIImage *image = [UIImage imageNamed:[images objectAtIndex:current]];
        
    imageView.image = image;
    
    [image release];
}
- (void)dealloc {
    [imageView release];
    [images release];
    [super dealloc];
}
@end


