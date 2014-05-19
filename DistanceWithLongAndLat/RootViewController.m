//
//  RootViewController.m
//  DistanceWithLongAndLat
//
//  Created by Ibokan on 14-5-19.
//  Copyright (c) 2014年 CainiaoLiu. All rights reserved.
//

#import "RootViewController.h"
#import "DistanceWithLongAndLat.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//古城,39.9072014648,116.1902475357   北京站,39.9049628889,116.4272689819
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    DistanceWithLongAndLat * ds = [[DistanceWithLongAndLat alloc]init];
    NSLog(@"-----%f米",[ds getDistanceWithLon1:116.4767  andLat1:39.908156 withLon2:116.450479  andLat2:39.908452]);
    NSLog(@"古城站到北京站%f米----",[ds getDistanceWithLon1:116.1902475357  andLat1:39.9072014648 withLon2:116.4272689819  andLat2:39.9049628889]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
