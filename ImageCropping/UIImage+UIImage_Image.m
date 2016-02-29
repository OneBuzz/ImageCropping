//
//  UIImage+UIImage_Image.m
//  ImageCropping
//
//  Created by BuzzLightYear23 on 16/2/29.
//  Copyright © 2016年 Irving. All rights reserved.
//

#import "UIImage+UIImage_Image.h"

@implementation UIImage (UIImage_Image)

+(UIImage *)imageWithImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color{
    
    //图片的宽度和高度
    CGFloat imageWH =image.size.width;
    
    //设置圆环的宽度
    CGFloat border = borderWidth;
    
    //圆形的宽度和高度
    CGFloat ovalWH = imageWH + 2 * border;
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(ovalWH, ovalWH), NO, 0);
    
    //画大圆
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,ovalWH,ovalWH)];
    
    [color set];
    
    [path fill];
    
    //设置裁剪区域
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(border, border, imageWH, imageWH)];
    [clipPath addClip];
    
    //绘制图片
    [image drawAtPoint:CGPointMake(border, border)];
    
    //获取图片
    UIImage *clipImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭上下文
    UIGraphicsGetCurrentContext();
    
    return clipImage;
    
    
    
    
    
}

@end
