//
//  EquationViewController.m
//  Equation
//
//  Created by 山崎 進 on 2012/12/12.
//  Copyright (c) 2012年 zacky1972. All rights reserved.
//

#import "EquationViewController.h"

#import <math.h>

@interface EquationViewController ()

@end

@implementation EquationViewController

@synthesize label1, label2;


// 2次方程式の解の公式を計算し，画面に表示します。
// 
// モデルとコントローラーが一体になったままの状態です。
// 解の公式をそのまま使って計算しています。
// 同じ計算を何度も行う無駄もあります。
//
// このままの状態ではソフトウェアテストを書けないので，
// まずはモデルとコントローラーを分離するリファクタリングを行います。

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    double a = 1;
    double b = -3;
    double c = 2;
    
    double result1 = (-b + sqrt(b * b - 4 * a * c))/(2*a);
    double result2 = (-b - sqrt(b * b - 4 * a * c))/(2*a);
    
    [label1 setText:[NSString stringWithFormat:@"%f", result1]];
    [label2 setText:[NSString stringWithFormat:@"%f", result2]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
