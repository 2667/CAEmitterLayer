//
//  CAEmitterLayerView.m
//  CAEmitterLayer
//
//  Created by ronmei on 16/8/8.
//  Copyright © 2016年 gaoyu. All rights reserved.
//

#import "CAEmitterLayerView.h"




@interface CAEmitterLayerView ()
{
    CAEmitterLayer *_emitterLayer;
}


@end


@implementation CAEmitterLayerView

// 1. 替换CAEmitterLayer成UIView子类的backedLayer
+ (Class)layerClass
{
    return [CAEmitterLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _emitterLayer = (CAEmitterLayer *)self.layer;

        
    }
    return self;
}


- (void)setEmitterLayer:(CAEmitterLayer *)layer
{
    _emitterLayer = layer;
}
- (CAEmitterLayer *)emitterLayer
{
    return _emitterLayer;
}


/**
 *  子类实现
 */
- (void)show{};
- (void)hide{};





@end
