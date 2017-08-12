//
//  ViewController.m
//  MYDD2017Ad
//
//  Created by Seyedvahid Dianat on 12/08/2017.
//  Copyright © 2017 Seyedvahid Dianat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *post = [NSString stringWithFormat:@"http://192.168.2.9:8080/ad?id=1"];
    NSURL *tutorialsUrl = [NSURL URLWithString:post];
    NSData *tutorialsHtmlData = [NSData dataWithContentsOfURL:tutorialsUrl];
    NSString *strData = [[NSString alloc]initWithData:tutorialsHtmlData encoding:NSUTF8StringEncoding];
    NSLog(@"strData=%@",strData);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
