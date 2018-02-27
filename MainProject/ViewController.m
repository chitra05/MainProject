//
//  ViewController.m
//  MainProject
//
//  Created by chitra on 2/26/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import "ViewController.h"
#import <TestFram/TestFram.h>
@interface ViewController ()

@end

@implementation ViewController
{
    NSTimer *timer;
    BOOL isSelect;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapToUseFramework:(id)sender {
    if (!isSelect) {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.5f target:self selector:@selector(changeColor) userInfo:nil repeats:YES];
        isSelect = YES;
    } else {
        [timer invalidate];
        isSelect = NO;
    }
    
}

- (void) changeColor {
    self.changeColorView.backgroundColor = [RandomColor useRandomColor];
}
@end
