//
//  SnowView.m
//  CAEmitterLayer
//
//  Created by ronmei on 16/8/8.
//  Copyright © 2016年 gaoyu. All rights reserved.
//

#import "SnowView.h"

@implementation SnowView


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
    CAEmitterCell *snowflake = [CAEmitterCell emitterCell];
    snowflake.birthRate = 1.f;
    snowflake.speed = 10.f;
    snowflake.velocity = 2.f;
    snowflake.velocityRange = 10.f;
    snowflake.yAcceleration = 10.f;
    snowflake.emissionRange = 0.5 * M_PI;
    snowflake.spinRange = 0.25 * M_PI;
    snowflake.contents = (__bridge id _Nullable)([UIImage imageNamed:@"1"].CGImage);
    snowflake.color = [UIColor redColor].CGColor;
    snowflake.lifetime = 60.f;
    snowflake.scale = 0.5;
    snowflake.scaleRange = 0.3;
    
    // 添加动画
    self.emitterLayer.emitterCells = @[snowflake];
}



@end
