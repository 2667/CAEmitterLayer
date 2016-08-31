//
//  RainView.m
//  CAEmitterLayer
//
//  Created by ronmei on 16/8/8.
//  Copyright © 2016年 gaoyu. All rights reserved.
//

#import "RainView.h"

@implementation RainView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
    }
    return self;
}


/**
 *  初始化参数
 */
- (void)setup
{
    self.emitterLayer.masksToBounds = YES;
    self.emitterLayer.emitterShape = kCAEmitterLayerLine;
    self.emitterLayer.emitterMode = kCAEmitterLayerSurface;
    self.emitterLayer.emitterSize = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width/2.f, -20);
}





- (void)show
{
    // 添加 CAEmitterCell
    CAEmitterCell *rainflake = [CAEmitterCell emitterCell];
    rainflake.birthRate = 25.f;
    rainflake.speed = 10.f;
    rainflake.velocity = 10.f;
    rainflake.velocityRange = 10.f;
    rainflake.yAcceleration = 1000.f;
    rainflake.emissionRange = 0.5 * M_PI;
    rainflake.spinRange = 0.25 * M_PI;
    rainflake.contents = (__bridge id _Nullable)([UIImage imageNamed:@"1"].CGImage);
    rainflake.color = [UIColor blackColor].CGColor;
    rainflake.lifetime = 7.f;
    rainflake.scale = 0.2f;
    rainflake.scaleRange = 0.f;
    
    // 添加动画
    self.emitterLayer.emitterCells = @[rainflake];
}

@end
