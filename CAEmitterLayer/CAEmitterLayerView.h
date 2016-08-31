//
//  CAEmitterLayerView.h
//  CAEmitterLayer
//
//  Created by ronmei on 16/8/8.
//  Copyright © 2016年 gaoyu. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  抽象的父类, 子类继承该类 : 比如子类想实现下雨效果, 下雪效果, 继承该类就很方便了
 */

@interface CAEmitterLayerView : UIView


/**
 *  模仿setter,getter方法  外界可以直接用点语法, 设置CAEmitterLayer的众多属性
 *  emitterView.emitterLayer.emitterMode = ...
 */
- (void)setEmitterLayer:(CAEmitterLayer *)layer;
- (CAEmitterLayer *)emitterLayer;

/**
 *  显示出当前View
 */
- (void)show;

/**
 *  隐藏当前View
 */
- (void)hide;




@end
