//
//  ViewController.m
//  流式动画
//
//  Created by chris on 16/3/4.
//  Copyright © 2016年 chris. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIButton *btn1;
@property (nonatomic, weak) UIButton *btn2;
@property (nonatomic, weak) UIButton *btn3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat W = 80;
    CGFloat H = 80;
    CGFloat margin = ([UIScreen mainScreen].bounds.size.width - 3 * W) / 4;
    CGFloat Y = [UIScreen mainScreen].bounds.size.height;
    
    UIButton *btn1 = [[UIButton alloc] init];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake(margin, Y + 50, W, H);
    btn1.layer.cornerRadius = W * 0.5;
    btn1.layer.masksToBounds = YES;
    self.btn1 = btn1;
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc] init];
    btn2.backgroundColor = [UIColor greenColor];
    btn2.frame = CGRectMake(2 * margin + W, Y + 250,W, H);
    btn2.layer.cornerRadius = W * 0.5;
    btn2.layer.masksToBounds = YES;
    self.btn2 = btn2;
    [self.view addSubview:btn2];

    UIButton *btn3 = [[UIButton alloc] init];
    btn3.backgroundColor = [UIColor blueColor];
    btn3.frame = CGRectMake(3 * margin + 2 * W, Y + 450, W, H);
    btn3.layer.cornerRadius = W * 0.5;
    btn3.layer.masksToBounds = YES;
    
    btn3.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    btn3.layer.shadowOpacity = 0.8;
    btn3.layer.shadowOffset = CGSizeMake(2, 5);
    btn3.layer.shadowRadius = 10;
    
    self.btn3 = btn3;
    [self.view addSubview:btn3];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(open) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *b = [[UIButton alloc] init];
    b.frame = CGRectMake(150, 100, 80, 80);
    b.backgroundColor = [UIColor purpleColor];
    [b addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
}


-(void)open{
    
    CGFloat dis = [UIScreen mainScreen].bounds.size.height * 0.5 - 100;
    
   [UIView animateWithDuration:3.0 delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:6.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
       
       CGRect temp1 = self.btn1.frame;
       temp1.origin.y = dis;
       self.btn1.frame = temp1;
       
       CGRect temp2 = self.btn2.frame;
       temp2.origin.y = dis;
       self.btn2.frame = temp2;
       
       CGRect temp3 = self.btn3.frame;
       temp3.origin.y = dis;
       self.btn3.frame = temp3;

   } completion:^(BOOL finished) {
       
   }];
 /**   [UIView animateWithDuration:1.0 animations:^{
    
//        CGPoint c1 = self.btn1.center;
//        c1.y = dis;
//        self.btn1.center = c1;
//        
//        CGPoint c2 = self.btn2.center;
//        c2.y = dis;
//        self.btn2.center = c2;
//        
//        CGPoint c3 = self.btn3.center;
//        c3.y = dis;
//        self.btn3.center = c3;
        
        CGRect temp1 = self.btn1.frame;
        temp1.origin.y = dis;
        self.btn1.frame = temp1;
        
        CGRect temp2 = self.btn2.frame;
        temp2.origin.y = dis;
        self.btn2.frame = temp2;
        
        CGRect temp3 = self.btn3.frame;
        temp3.origin.y = dis;
        self.btn3.frame = temp3;


    }];
    */
}
/**
//-(void)close{
//    [UIView animateWithDuration:1.0 animations:^{
//        
////        CGPoint c1 = self.btn1.center;
////        c1.y = 1000;
////        self.btn1.center = c1;
////        
////        CGPoint c2 = self.btn2.center;
////        c2.y = 900;
////        self.btn2.center = c2;
////        
////        CGPoint c3 = self.btn3.center;
////        c3.y = 800;
////        self.btn3.center = c3;
//        
//        CGRect temp1 = self.btn1.frame;
//        temp1.origin.y = 1000;
//        self.btn1.frame = temp1;
//        
//        CGRect temp2 = self.btn2.frame;
//        temp2.origin.y = 900;
//        self.btn2.frame = temp2;
//        
//        CGRect temp3 = self.btn3.frame;
//        temp3.origin.y = 800;
//        self.btn3.frame = temp3;
//        
//    }];
//}
*/

-(void)close{
    [UIView animateWithDuration:1.0 animations:^{
        CGRect temp1 = self.btn1.frame;
        temp1.origin.y = 1000;
        self.btn1.frame = temp1;
        
        CGRect temp2 = self.btn2.frame;
        temp2.origin.y = 900;
        self.btn2.frame = temp2;
        
        CGRect temp3 = self.btn3.frame;
        temp3.origin.y = 800;
        self.btn3.frame = temp3;
    } completion:^(BOOL finished) {
        CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
        
        CGRect temp1 = self.btn1.frame;
        temp1.origin.y = screenH + 50;
        self.btn1.frame = temp1;
        
        CGRect temp2 = self.btn2.frame;
        temp2.origin.y = screenH + 150;
        self.btn2.frame = temp2;
        
        CGRect temp3 = self.btn3.frame;
        temp3.origin.y = screenH + 250;
        self.btn3.frame = temp3;
        
    }];
}

@end
