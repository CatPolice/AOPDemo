//
//  ViewController.m
//  AOPDemo
//
//  Created by runlin on 17/2/22.
//  Copyright © 2017年 gavin. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
- (IBAction)A_Click:(id)sender {
    [self.navigationController pushViewController:[AViewController new] animated:YES];
}
- (IBAction)B_Click:(id)sender {
    [self.navigationController pushViewController:[BViewController new] animated:YES];
}
- (IBAction)C_Click:(id)sender {
    [self.navigationController pushViewController:[CViewController new] animated:YES];
}

@end
