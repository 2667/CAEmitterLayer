//
//  ViewController.m
//  CAEmitterLayer
//
//  Created by ronmei on 16/8/8.
//  Copyright © 2016年 gaoyu. All rights reserved.
//

#import "ViewController.h"
#import "CAEmitterLayerView.h"
#import "SnowView.h"
#import "RainView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // CAEmitterLayer的用途: GPU渲染节省性能 粒子效果好,容易
    
    // 创建Layer
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    emitterLayer.borderWidth = 1.f;
    // 尺寸
    emitterLayer.frame = CGRectMake(100, 100, 100, 100);
    
    // 发射的粒子超出了frame的尺寸 (切除掉)
//    emitterLayer.masksToBounds = YES;
    // 发射点
    emitterLayer.emitterPosition = CGPointMake(0, 0);
    
    // 发射的模式
    emitterLayer.emitterMode = kCAEmitterLayerSurface;
    // 发射的形状
    emitterLayer.emitterShape = kCAEmitterLayerLine;
    [self.view.layer addSublayer:emitterLayer];
    
    // 创建粒子
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    
    // 粒子产生率
    cell.birthRate = 1.f;
    // 粒子的生命周期(10s后消失)
    cell.lifetime = 120.f;
    // 粒子的速度值
    cell.velocity = 5.f;
    // 粒子的速度值范围 (7-13)
    cell.velocityRange = 3.0f;
    
    // y轴加速度
    cell.yAcceleration = 2.f;
    
    // 粒子角度范围(随机在这个角度里面发射)
    cell.emissionRange = 4 * M_1_PI;
    
    // 粒子颜色
//    cell.color = [UIColor blackColor].CGColor;
    // 粒子的图片
    cell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"1"].CGImage);
    
    
    // 让CAEmitterLayer和CAEmitterCell产生关联
    emitterLayer.emitterCells = @[cell];
    
    
    
    
    
    // 创建UIView的时候, 系统会隐式的给我们创建一个Layer
    
    // 封装CAEmitterLayer
    /**
     *  1. 替换CAEmitterLayer成UIView子类的layer
     *  2. 将CAEmitterLayer封装成的类作为"抽象"父类
     */
    
    
    // 下雪和下雨的View的边界很明显, 不好看, 所有我们弄一个alpha图层 size和添加到的父视图一样大
    UIImageView *alphaView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    alphaView1.image = [UIImage imageNamed:@"1"];
    
    // 多态: 父类的指针指向子类的对象
    CAEmitterLayerView *snowView = [[SnowView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    snowView.maskView = alphaView1;
    [self.view addSubview:snowView];
    [snowView show];
    
    CAEmitterLayerView *rainView = [[RainView alloc] initWithFrame:CGRectMake(100, 500, 100, 100)];
    [self.view addSubview:rainView];
    [rainView show];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

@end
